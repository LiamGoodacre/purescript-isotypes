-- | Implementations of type class methods for Isotypes
module Data.Isotype.Instance where

import Data.Lens as Lens
import Data.Isotype.Types (Isotype)
import Data.Ord (class Ord, Ordering, compare)

-- | Foldable.foldMap for an Isotype
foldMapIsotype :: forall i a m. Isotype i -> (a -> m) -> i a -> m
foldMapIsotype i f n = f (Lens.review i n)

-- | Foldable.foldr for an Isotype
foldrIsotype :: forall i a b. Isotype i -> (a -> b -> b) -> b -> i a -> b
foldrIsotype i f u n = f (Lens.review i n) u

-- | Foldable.foldl for an Isotype
foldlIsotype :: forall i a b. Isotype i -> (b -> a -> b) -> b -> i a -> b
foldlIsotype i f u n = f u (Lens.review i n)

-- | Invariant.imap for an Isotype
imapIsotype :: forall i a b. Isotype i -> (a -> b) -> (b -> a) -> i a -> i b
imapIsotype i f _ = Lens.under i f

-- | Functor.map for an Isotype
mapIsotype :: forall i a b. Isotype i -> (a -> b) -> i a -> i b
mapIsotype i = Lens.under i

-- | Apply.apply for an Isotype
applyIsotype :: forall i a b. Isotype i -> i (a -> b) -> i a -> i b
applyIsotype i l r = Lens.view i (Lens.review i l (Lens.review i r))

-- | Applicative.pure for an Isotype
pureIsotype :: forall i a. Isotype i -> a -> i a
pureIsotype i = Lens.view i

-- | Bind.bind for an Isotype
bindIsotype :: forall i a b. Isotype i -> i a -> (a -> i b) -> i b
bindIsotype i n f = f (Lens.review i n)

-- | Extend.extend for Isotype
extendIsotype :: forall i b a. Isotype i -> (i a -> b) -> i a -> i b
extendIsotype i f n = Lens.view i (f n)

-- | Comonad.extract for Isotype
extractIsotype :: forall i a. Isotype i -> i a -> a
extractIsotype i = Lens.review i

-- | Ord.compare for Isotype
compareIsotype :: forall i a. Ord a => Isotype i -> i a -> i a -> Ordering
compareIsotype i l r = compare (Lens.review i l) (Lens.review i r)
