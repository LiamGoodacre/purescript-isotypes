-- | Additive and Multiplicative for Semiring
module Data.Isotype.Semiring
( additively,
  multiplicatively )
where

import Data.Isotype.Types (Isotype)
import Data.Lens as Lens
import Data.Monoid.Additive (runAdditive, Additive(Additive))
import Data.Monoid.Multiplicative (runMultiplicative, Multiplicative(Multiplicative))

-- | A `Semiring` supports (among other operations) an `addition` function and
-- | a `zero` value.  Together they form a monoid.  The type `Additive t`
-- | implements this monoid for its `Monoid` instance:
-- | ```purescript
-- | Additive a <> Additive b = Additive (a + b)
-- | Additive 3.0 <> Additive 4.0 = Additive 7.0
-- |
-- | foldAla additively [] = zero
-- | foldAla additively [a, b] = a + b
-- | foldAla additively [3.0, 4.0] = 7.0
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Additive
additively :: Isotype Additive
additively = Lens.iso Additive runAdditive

-- | A `Semiring` supports (among other operations) a `multiplication` function
-- | and a `one` value.  Together they form a monoid.  The type
-- | `Multiplicative t` implements this monoid for its `Monoid` instance:
-- | ```purescript
-- | Multiplicative a <> Multiplicative b = Multiplicative (a * b)
-- | Multiplicative 3.0 <> Multiplicative 4.0 = Multiplicative 12.0
-- |
-- | foldAla multiplicatively [] = one
-- | foldAla multiplicatively [a, b] = a * b
-- | foldAla multiplicatively [3.0, 4.0] = 12.0
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Multiplicative
multiplicatively :: Isotype Multiplicative
multiplicatively = Lens.iso Multiplicative runMultiplicative
