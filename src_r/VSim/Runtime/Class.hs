{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeFamilies #-}

-- | Contains some generic typeclsses, used by the Runtime
module VSim.Runtime.Class where

import Control.Applicative
import Control.Monad

import VSim.Runtime.Waveform

-- | Representable types are those who can be created as signals or variables.
-- To do so whe neeed to know their signal- and variable- representations.
class Representable t where
    -- | Signal representation
    type SR t :: *
    -- | Varaiable representation
    type VR t :: *
    -- | Constant representation. Used for carrying function returns and
    -- constants
    type CR t :: *

class (Monad m) => Valueable m x where
    val :: x -> m Int

instance (Monad m) => Valueable m Int where
    val r = return r

-- | States that type t can be changed by applying the modifier (SM t)
class Subtypeable t where
    -- | Subtype Modifier
    type SM t :: *
    build_subtype :: SM t -> t -> t
    -- | is first a valid subtype of second?
    valid_subtype_of :: t -> t -> Bool

-- | Value x may be checked against some internal constraint. Ccheck should call
-- monad's fail on checking failure
class (Monad m, Show x) => Constrained m x where
    ccheck :: x -> m ()

-- | Constraints checking helper
ccfail_ifnot :: (Show x, Monad m) => x -> Bool -> m ()
ccfail_ifnot x ok = when (not ok) $ fail $ "constrained failed: " ++ (show x)

-- | States that a value @x can be converted to a string representation of type
-- @t.
class Imageable m x t where
    t_image :: m x -> t -> m String

class Primitive t where
    type RANGE t :: *
    make_range :: t -> t -> RANGE t

class PrimitiveRange t where
    type PRIM t :: *
    make_ranged_type :: t -> PRIM t

class Resolvable t where
    is_resolved :: t -> Bool

