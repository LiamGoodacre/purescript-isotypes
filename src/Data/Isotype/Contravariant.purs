-- | Contravariant newtypes
module Data.Isotype.Contravariant
( comparatively,
  equivalently,
  oppositely,
  predicately )
where

import Data.Lens as Lens
import Data.Isotype.Newtype (newtypeIso)
import Data.Comparison (Comparison)
import Data.Equivalence (Equivalence)
import Data.Op (Op)
import Data.Ordering (Ordering)
import Data.Predicate (Predicate)

comparatively :: forall a b. Lens.Iso (a -> a -> Ordering) (b -> b -> Ordering) (Comparison a) (Comparison b)
comparatively = newtypeIso

equivalently :: forall a b. Lens.Iso (a -> a -> Boolean) (b -> b -> Boolean) (Equivalence a) (Equivalence b)
equivalently = newtypeIso

oppositely :: forall a b c d. Lens.Iso (b -> a) (d -> c) (Op a b) (Op c d)
oppositely = newtypeIso

predicately :: forall a b. Lens.Iso (a -> Boolean) (b -> Boolean) (Predicate a) (Predicate b)
predicately = newtypeIso
