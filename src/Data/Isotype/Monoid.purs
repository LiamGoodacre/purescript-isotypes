-- | Monoidal newtypes
module Data.Isotype.Monoid
( dually,
  endoly,
  firstly,
  lastly )
where

import Data.Lens as Lens
import Data.Isotype.Types (Isotype)
import Data.Isotype.Newtype (newtypeIso)
import Data.Maybe (Maybe)
import Data.Maybe.First (First)
import Data.Maybe.Last (Last)
import Data.Monoid.Dual (Dual)
import Data.Monoid.Endo (Endo)

-- | For a type `t`; if `Monoid t` exists then `Monoid (Dual t)` exists.
-- | This monoid appends in reverse order to the underlying monoid:
-- | ```purescript
-- | Dual a <> Dual b = Dual (b <> a)
-- | Dual "World" <> Dual "Hello" = Dual "HelloWorld"
-- |
-- | foldAla dually [] = mempty
-- | foldAla dually [a, b] = b <> a
-- | foldAla dually ["World", "Hello"] = "HelloWorld"
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Dual
dually :: Isotype Dual
dually = newtypeIso

-- | `Endo t`, for some type `t`, is a function `t -> t`.
-- | The `Monoid (Endo t)` exists regardless of whether `Monoid t` exists.
-- | This monoid appends by function composition:
-- | ```purescript
-- | Endo f <> Endo g = Endo (f <<< g)
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Endo
endoly :: forall a b. Lens.Iso (a -> a) (b -> b) (Endo a) (Endo b)
endoly = newtypeIso

-- | `First t` is a `Maybe t` whose `Monoid` instance always takes the first
-- | `Just` value it sees:
-- | ```purescript
-- | First (Just x) <> First (Just y) = First (Just x)
-- | First Nothing <> First (Just y) = First (Just y)
-- | First Nothing <> Nothing = First Nothing
-- |
-- | items = [Nothing, Just "first", Nothing, Just "last", Nothing]
-- | foldAla firstly items = Just "first"
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-maybe/1.0.0/docs/Data.Maybe.First
firstly :: forall a b. Lens.Iso (Maybe a) (Maybe b) (First a) (First b)
firstly = newtypeIso

-- | `Last t` is a `Maybe t` whose `Monoid` instance always takes the last
-- | `Just` value it sees:
-- | ```purescript
-- | Last (Just x) <> Last (Just y) = Last (Just y)
-- | Last (Just x) <> Last Nothing = Last (Just x)
-- | Last Nothing <> Nothing = Last Nothing
-- |
-- | items = [Nothing, Just "first", Nothing, Just "last", Nothing]
-- | foldAla lastly items = Just "last"
-- | ```
-- | See https://pursuit.purescript.org/packages/purescript-maybe/1.0.0/docs/Data.Maybe.Last
lastly :: forall a b. Lens.Iso (Maybe a) (Maybe b) (Last a) (Last b)
lastly = newtypeIso
