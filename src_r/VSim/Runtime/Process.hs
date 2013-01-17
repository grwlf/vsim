{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Module declares various process-level DSL combinators
module VSim.Runtime.Process where

import Data.Monoid
import qualified Data.IntMap as IntMap
import Control.Applicative
import Control.Monad.Trans
import Control.Monad.Reader
import Control.Monad.State
import Control.Monad.BP
import Control.Monad
import Text.Printf

import VSim.Runtime.Monad
import VSim.Runtime.Class
import VSim.Runtime.Time
import VSim.Runtime.Waveform
import VSim.Runtime.Ptr

class (Monad m) => Appendable m x where
    (.++.) :: m x -> m x -> m x

instance (Monad m, Monoid x) => Appendable m x where
    (.++.) ms1 ms2 = mappend `liftM` ms1 `ap` ms2

ms :: (MonadProc m) => Int -> m NextTime
ms t = ticked <$> now <*> (pure $ t * milliSecond)

us :: (MonadProc m) => Int -> m NextTime
us t = ticked <$> now <*> (pure $ t * microSecond)

ps :: (MonadProc m) => Int -> m NextTime
ps t = ticked <$> now <*> (pure $ t * picoSecond)

ns :: (MonadProc m) => Int -> m NextTime
ns t = ticked <$> now <*> (pure $ t * nanoSecond)

fs :: (MonadProc m) => Int -> m NextTime
fs t = ticked <$> now <*> (pure $ t * femtoSecond)

next :: (MonadProc m) => m NextTime
next = fs 1

wait :: (MonadWait m) => m NextTime -> m ()
wait nt = nt >>= wait_until

-- FIXME: define the undefined
instance (Valueable (VAssign l) x)
    => Assignable (VAssign l) (Array t x) (Array t x) where
    assign mv mr = undefined

-- FIXME: define the undefined
instance (Valueable (VAssign l) x)
    => Assignable (VAssign l) (Record t x) (Record t x) where
    assign mv mr = undefined

aggregate :: (MonadPtr m) => [a -> m a] -> m a -> m a
aggregate fs mr = mr >>= \r -> foldM (flip ($)) r fs

(.<=.) :: VProc l x -> (VProc l NextTime, Assigner (VAssign l) x) -> VProc l ()
(.<=.) mr (mt,ma) = mr >>= \r -> mt >>= \t -> runVAssign t (ma (return r))

(.=.) :: VProc l Variable -> (Assigner (VProc l) Variable) -> VProc l ()
(.=.) mr ma = ma mr >> return ()

add, (.+.) :: (MonadProc m, Valueable m x, Valueable m y) => m x -> m y -> m Int
add ma mb = (+) <$> (val =<< ma) <*> (val =<< mb)
(.+.) = add

minus, (.-.) :: (MonadProc m, Valueable m x, Valueable m y) => m x -> m y -> m Int
minus ma mb = (-) <$> (val =<< ma) <*> (val =<< mb)
(.-.) = minus

greater, (.>.) :: (MonadProc m, Valueable m x, Valueable m y) => m x -> m y -> m Bool
greater ma mb = (>) <$> (val =<< ma) <*> (val =<< mb)
(.>.) = greater

greater_eq, (.>=.) :: (MonadProc m, Valueable m x, Valueable m y) => m x -> m y -> m Bool
greater_eq ma mb = (>=) <$> (val =<< ma) <*> (val =<< mb)
(.>=.) = greater_eq

eq, (.==.) :: (MonadProc m, Valueable m x, Valueable m y) => m x -> m y -> m Bool
eq ma mb = (==) <$> (val =<< ma) <*> (val =<< mb)
(.==.) = eq

-- | if and else
iF :: (MonadProc m) => m Bool -> m () -> m () -> m ()
iF exp m1 m2 = exp >>= \ r -> if r then m1 else m2

-- | if without else
iF_ :: (MonadProc m) => m Bool -> m () -> m ()
iF_ exp m1 = iF exp m1 (return ())

data ForDirection = To | Downto
    deriving(Show)

-- | Monadic for
for :: (MonadProc m) => (m Int, ForDirection, m Int) -> (Int -> m ()) -> m ()
for (ma,dir,mb) body = do
    a <- ma
    b <- mb
    let indexes To = [a..b]
        indexes Downto = [b..a]
    forM_ (indexes dir) body

call :: Elab (VProc l2) (VProc l1 l1) -> VProc l2 l1
call e = do
    (p,_) <- runElab e
    catchEarlyV p

ret :: l -> VProc l ()
ret l = VProc (earlyBP l)

