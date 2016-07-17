-- | Conjunction and Disjunction for HeytingAlgebras
module Data.Isotype.HeytingAlgebra
( conjunctly,
  disjunctly )
where

import Data.Isotype.Types (Isotype)
import Data.Lens as Lens
import Data.Monoid.Conj (runConj, Conj(Conj))
import Data.Monoid.Disj (runDisj, Disj(Disj))

conjunctly :: Isotype Conj
conjunctly = Lens.iso Conj runConj

disjunctly :: Isotype Disj
disjunctly = Lens.iso Disj runDisj
