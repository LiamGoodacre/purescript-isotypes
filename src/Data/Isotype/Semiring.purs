-- | Additive and Multiplicative for Semiring
module Data.Isotype.Semiring
( additively,
  multiplicatively )
where

import Data.Isotype.Types (Isotype)
import Data.Lens as Lens
import Data.Monoid.Additive (runAdditive, Additive(Additive))
import Data.Monoid.Multiplicative (runMultiplicative, Multiplicative(Multiplicative))

additively :: Isotype Additive
additively = Lens.iso Additive runAdditive

multiplicatively :: Isotype Multiplicative
multiplicatively = Lens.iso Multiplicative runMultiplicative
