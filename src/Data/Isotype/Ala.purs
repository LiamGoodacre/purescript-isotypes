-- | Newtype functions influenced by [http://hackage.haskell.org/package/newtype-0.2/docs/Control-Newtype.html]
module Data.Isotype.Ala
( ala,
  foldAla )
where

import Data.Lens as Lens
import Data.Foldable (class Foldable, foldMap)
import Data.Monoid (class Monoid)
import Prelude ((<<<))

-- | Apply a function ala some iso
-- |
-- | Example:
-- |
-- | ```
-- | > ala additively foldMap [1.0, 2.0]
-- | = 3.0
-- | ```
ala :: forall s t a b y. Lens.Iso s t a b -> ((s -> a) -> y -> b) -> y -> t
ala i r y = Lens.review i (r (Lens.view i) y)

-- | Use of ala specialized to foldMap
-- |
-- | Example:
-- |
-- | ```
-- | > foldAla multiplicatively [3.0, 4,0]
-- | = 12.0
-- | ```
foldAla :: forall f s a. (Foldable f, Monoid a) => Lens.IsoP s a -> f s -> s
foldAla i xs = ala i foldMap xs
