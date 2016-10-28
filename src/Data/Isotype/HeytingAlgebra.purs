-- | Conjunction and Disjunction for HeytingAlgebras
module Data.Isotype.HeytingAlgebra
( conjunctly,
  disjunctly )
where

import Data.Isotype.Types (Isotype)
import Data.Isotype.Newtype (newtypeIso)
import Data.Monoid.Conj (Conj)
import Data.Monoid.Disj (Disj)

conjunctly :: Isotype Conj
conjunctly = newtypeIso

disjunctly :: Isotype Disj
disjunctly = newtypeIso
