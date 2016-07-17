-- | Contravariant newtypes
module Data.Isotype.Contravariant
( comparatively,
  equivalently,
  oppositely,
  predicately )
where

import Data.Lens as Lens
import Data.Comparison (runComparison, Comparison(Comparison))
import Data.Equivalence (runEquivalence, Equivalence(Equivalence))
import Data.Op (runOp, Op(Op))
import Data.Ordering (Ordering)
import Data.Predicate (runPredicate, Predicate(Predicate))

comparatively :: forall a b. Lens.Iso (a -> a -> Ordering) (b -> b -> Ordering) (Comparison a) (Comparison b)
comparatively = Lens.iso Comparison runComparison

equivalently :: forall a b. Lens.Iso (a -> a -> Boolean) (b -> b -> Boolean) (Equivalence a) (Equivalence b)
equivalently = Lens.iso Equivalence runEquivalence

oppositely :: forall a b c d. Lens.Iso (b -> a) (d -> c) (Op a b) (Op c d)
oppositely = Lens.iso Op runOp

predicately :: forall a b. Lens.Iso (a -> Boolean) (b -> Boolean) (Predicate a) (Predicate b)
predicately = Lens.iso Predicate runPredicate
