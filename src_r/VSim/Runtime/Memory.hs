{-# LANGUAGE Rank2Types #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

module VSim.Runtime.Memory where

import Control.Monad.Trans
import Control.Monad.State
import Control.Applicative
import Data.IntMap as IntMap
import Data.IORef
import Text.Printf
import System.IO
import System.Random

import VSim.Runtime.Waveform
import VSim.Runtime.Process
import VSim.Runtime.Monad

rnd' :: (MonadIO m) => Constraint -> m Int
rnd' c = liftIO $ randomRIO (lower c, upper c)

class Generator x where
    -- | Signal representation
    type SR x :: *
    -- | Allocate signal for this type representation
    alloc_signal :: (MonadElab m) => String -> x -> (m (SR x) -> m (SR x)) -> m (SR x)
    -- | Varaiable representation
    type VR x :: *
    -- | Allocate variable for this type representation
    alloc_variable :: (MonadElab m) => String -> x -> (m (VR x) -> m (VR x)) -> m (VR x)

instance Generator Constraint where
    type SR Constraint = Ptr Signal
    type VR Constraint = Ptr Variable
    alloc_signal = alloc_primitive_signal
    alloc_variable = alloc_primitive_variable

-- | ArrayT of IntType generates Arrays of this type
instance Generator (ArrayT Constraint) where
    type SR (ArrayT Constraint) = Ptr (Array Constraint (Ptr Signal))
    type VR (ArrayT Constraint) = Ptr (Array Constraint (Ptr Variable))
    alloc_signal = alloc_array_signal
    alloc_variable = alloc_array_variable

-- | ArrayT of ArrayT generates Array of Arrays
instance Generator (ArrayT t) => Generator (ArrayT (ArrayT t)) where
    type SR (ArrayT (ArrayT t)) = Ptr (Array (ArrayT t) (SR (ArrayT t)))
    type VR (ArrayT (ArrayT t)) = Ptr (Array (ArrayT t) (VR (ArrayT t)))
    alloc_signal = alloc_array_signal
    alloc_variable = alloc_array_variable

-- VHDL record field collection (like tuples)
data a :- b = a :- b
    deriving (Eq, Ord, Show)
infixr 5 :-

instance (Generator a, Generator b) => Generator ((String, a) :- b)  where
    type SR ((String, a) :- b) = (SR a, SR b)
    type VR ((String, a) :- b) = (VR a, VR b)
    alloc_signal n ((fn,ta) :- tb) f = do
        sa <- alloc_signal (printf "%s.%s" n fn) ta id
        sb <- alloc_signal n tb id
        f $ return (sa, sb)
    alloc_variable n ((fn,ta) :- tb) f = do
        sa <- alloc_variable (printf "%s.%s" n fn) ta id
        sb <- alloc_variable n tb id
        f $ return (sa, sb)

instance Generator ()  where
    type SR () = ()
    type VR () = ()
    alloc_signal _ _ _ = return ()
    alloc_variable _ _ _ = return ()

newtype RecordT x = RecordT x
    deriving(Show)

instance Generator x => Generator (RecordT x) where
    type SR (RecordT x) = Ptr (Record (SR x))
    type VR (RecordT x) = Ptr (Record (VR x))
    alloc_signal n (RecordT t) f = do
        b <- alloc_signal n t id
        f $ allocM $ Record n b
    alloc_variable n (RecordT t) f = do
        b <- alloc_variable n t id
        f $ allocM $ Record n b

alloc_record_type x = return (RecordT x, accessors) where
    -- FIXME: Make me unsee that
    accessors
        =  (fst)
        :- (fst . snd)
        :- (fst . snd . snd)
        :- (fst . snd . snd . snd)
        :- (fst . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)
        :- (fst . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd . snd)

-- | Allocates a signal from the memory
alloc_primitive_signal n c f = do
    i <- rnd' c
    r <- f $ allocM (Signal n (wconst i) 0 c [])
    modify_mem $ \(Memory rs ps) -> Memory (r:rs) ps
    return r

-- | Allocates variable from the memory
alloc_primitive_variable :: (MonadElab m)
    => String -> Constraint -> Assigner m (Ptr Variable) -> m (Ptr Variable)
alloc_primitive_variable n c f = rnd' c >>= \i -> f $ allocM (Variable n i c)

-- | Allocates array of signals from the memory
alloc_array_signal n a f = do
    let indexes = [(abegin a) .. (aend a)]
    pairs <- forM indexes (\i -> do
        let sn = n ++ (printf "[%d]" i)
        s <- alloc_signal sn (aconstr a) id
        return (i,s))
    f $ allocM (Array n (IntMap.fromList pairs) a)

-- | Allocates array of variables
alloc_array_variable n a f = do
    let indexes = [(abegin a) .. (aend a)]
    pairs <- forM indexes (\i -> do
        let sn = n ++ (printf "[%d]" i)
        s <- alloc_variable sn (aconstr a) id
        return (i,s))
    f $ allocM (Array n (IntMap.fromList pairs) a)

-- | Registers process in the memory. Updates list of signal's reactions
alloc_process :: (MonadElab m)
    => String -> [Ptr Signal] -> ProcessHandler -> m (Ptr Process)
alloc_process n ss h = do
    let encycle [] = forever h
        encycle xs = forever (h >> wait_on xs)
    p <- allocM (Process n (encycle ss) Nothing [])
    modify_mem $ \(Memory rs ps) -> Memory rs (p:ps)
    return p

alloc_process_let :: (MonadElab m)
    => String -> [Ptr Signal] -> m ProcessHandler -> m (Ptr Process)
alloc_process_let n ss lh = lh >>= alloc_process n ss

alloc_constant :: (MonadElab m) => String -> m Int -> m Int
alloc_constant _ v = v

alloc_ranged_type :: (MonadElab m) => m Int -> m Int -> m Constraint
alloc_ranged_type ma mb = ranged <$> ma <*> mb

alloc_unranged_type :: (MonadElab m) => m Constraint
alloc_unranged_type = return unranged

alloc_array_type :: (MonadElab m) => m Int -> m Int -> t -> m (ArrayT t)
alloc_array_type mb me t = ArrayT <$> (pure t) <*> mb <*> me

printSignalsM :: (MonadIO m) => Memory -> m ()
printSignalsM m = liftIO $ mapM (printSignalM m) >=> mapM_ putStrLn $ (msignals m)

printProcessesM :: (MonadIO m) => Memory -> m ()
printProcessesM m = do
    forM_ (mprocesses m) $ \r -> do
        p <- deref m r
        liftIO $ printf "proc %s active %s\n" (pname p) (show $ pawake p)

instance (Valueable Elab v) => Assignable Elab (Ptr Signal) v where
    assign mv mr = do
        v <- (mv >>= val)
        r <- mr
        updateM (\s -> s{ swave = wconst v }) r
        return r 

instance (Valueable Elab v) => Assignable Elab (Ptr Variable) v where
    assign mv mr = do
        v <- (mv >>= val)
        r <- mr
        updateM (\var -> var{ vval = v }) r
        return r 


