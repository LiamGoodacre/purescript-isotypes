-- | Profunctor newtypes
module Data.Isotype.Profunctor
( starly,
  costarly )
where

import Data.Lens as Lens
import Data.Profunctor.Costar (unCostar, Costar(Costar))
import Data.Profunctor.Star (unStar, Star(Star))

starly :: forall f a b c d. Lens.Iso (a -> f b) (c -> f d) (Star f a b) (Star f c d)
starly = Lens.iso Star unStar

costarly :: forall f a b c d. Lens.Iso (f a -> b) (f c -> d) (Costar f a b) (Costar f c d)
costarly = Lens.iso Costar unCostar
