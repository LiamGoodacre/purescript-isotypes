-- | Profunctor newtypes
module Data.Isotype.Profunctor
( starly,
  costarly )
where

import Data.Lens as Lens
import Data.Isotype.Newtype (newtypeIso)
import Data.Profunctor.Costar (Costar)
import Data.Profunctor.Star (Star)

starly :: forall f a b c d. Lens.Iso (a -> f b) (c -> f d) (Star f a b) (Star f c d)
starly = newtypeIso

costarly :: forall f a b c d. Lens.Iso (f a -> b) (f c -> d) (Costar f a b) (Costar f c d)
costarly = newtypeIso
