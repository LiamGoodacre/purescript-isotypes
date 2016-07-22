## Module Data.Isotype


### Re-exported from Data.Isotype.Ala:

#### `foldAla`

``` purescript
foldAla :: forall f s a. (Foldable f, Monoid a) => IsoP s a -> f s -> s
```

Use of ala specialized to foldMap

Example:

```
> foldAla multiplicatively [3.0, 4,0]
= 12.0
```

#### `ala`

``` purescript
ala :: forall s t a b y. Iso s t a b -> ((s -> a) -> y -> b) -> y -> t
```

Apply a function ala some iso

Example:

```
> ala additively foldMap [1.0, 2.0]
= 3.0
```

### Re-exported from Data.Isotype.Contravariant:

#### `predicately`

``` purescript
predicately :: forall a b. Iso (a -> Boolean) (b -> Boolean) (Predicate a) (Predicate b)
```

#### `oppositely`

``` purescript
oppositely :: forall a b c d. Iso (b -> a) (d -> c) (Op a b) (Op c d)
```

#### `equivalently`

``` purescript
equivalently :: forall a b. Iso (a -> a -> Boolean) (b -> b -> Boolean) (Equivalence a) (Equivalence b)
```

#### `comparatively`

``` purescript
comparatively :: forall a b. Iso (a -> a -> Ordering) (b -> b -> Ordering) (Comparison a) (Comparison b)
```

### Re-exported from Data.Isotype.HeytingAlgebra:

#### `disjunctly`

``` purescript
disjunctly :: Isotype Disj
```

#### `conjunctly`

``` purescript
conjunctly :: Isotype Conj
```

### Re-exported from Data.Isotype.Instance:

#### `pureIsotype`

``` purescript
pureIsotype :: forall i a. Isotype i -> a -> i a
```

Applicative.pure for an Isotype

#### `mapIsotype`

``` purescript
mapIsotype :: forall i a b. Isotype i -> (a -> b) -> i a -> i b
```

Functor.map for an Isotype

#### `imapIsotype`

``` purescript
imapIsotype :: forall i a b. Isotype i -> (a -> b) -> (b -> a) -> i a -> i b
```

Invariant.imap for an Isotype

#### `foldrIsotype`

``` purescript
foldrIsotype :: forall i a b. Isotype i -> (a -> b -> b) -> b -> i a -> b
```

Foldable.foldr for an Isotype

#### `foldlIsotype`

``` purescript
foldlIsotype :: forall i a b. Isotype i -> (b -> a -> b) -> b -> i a -> b
```

Foldable.foldl for an Isotype

#### `foldMapIsotype`

``` purescript
foldMapIsotype :: forall i a m. Isotype i -> (a -> m) -> i a -> m
```

Foldable.foldMap for an Isotype

#### `extractIsotype`

``` purescript
extractIsotype :: forall i a. Isotype i -> i a -> a
```

Comonad.extract for Isotype

#### `extendIsotype`

``` purescript
extendIsotype :: forall i b a. Isotype i -> (i a -> b) -> i a -> i b
```

Extend.extend for Isotype

#### `compareIsotype`

``` purescript
compareIsotype :: forall i a. Ord a => Isotype i -> i a -> i a -> Ordering
```

Ord.compare for Isotype

#### `bindIsotype`

``` purescript
bindIsotype :: forall i a b. Isotype i -> i a -> (a -> i b) -> i b
```

Bind.bind for an Isotype

#### `applyIsotype`

``` purescript
applyIsotype :: forall i a b. Isotype i -> i (a -> b) -> i a -> i b
```

Apply.apply for an Isotype

### Re-exported from Data.Isotype.Monoid:

#### `lastly`

``` purescript
lastly :: forall a b. Iso (Maybe a) (Maybe b) (Last a) (Last b)
```

`Last t` is a `Maybe t` whose `Monoid` instance always takes the last
`Just` value it sees:
```purescript
Last (Just x) <> Last (Just y) = Last (Just y)
Last (Just x) <> Last Nothing = Last (Just x)
Last Nothing <> Nothing = Last Nothing

items = [Nothing, Just "first", Nothing, Just "last", Nothing]
foldAla lastly items = Just "last"
```
See https://pursuit.purescript.org/packages/purescript-maybe/1.0.0/docs/Data.Maybe.Last

#### `firstly`

``` purescript
firstly :: forall a b. Iso (Maybe a) (Maybe b) (First a) (First b)
```

`First t` is a `Maybe t` whose `Monoid` instance always takes the first
`Just` value it sees:
```purescript
First (Just x) <> First (Just y) = First (Just x)
First Nothing <> First (Just y) = First (Just y)
First Nothing <> Nothing = First Nothing

items = [Nothing, Just "first", Nothing, Just "last", Nothing]
foldAla firstly items = Just "first"
```
See https://pursuit.purescript.org/packages/purescript-maybe/1.0.0/docs/Data.Maybe.First

#### `endoly`

``` purescript
endoly :: forall a b. Iso (a -> a) (b -> b) (Endo a) (Endo b)
```

`Endo t`, for some type `t`, is a function `t -> t`.
The `Monoid (Endo t)` exists regardless of whether `Monoid t` exists.
This monoid appends by function composition:
```purescript
Endo f <> Endo g = Endo (f <<< g)
```
See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Endo

#### `dually`

``` purescript
dually :: Isotype Dual
```

For a type `t`; if `Monoid t` exists then `Monoid (Dual t)` exists.
This monoid appends in reverse order to the underlying monoid:
```purescript
Dual a <> Dual b = Dual (b <> a)

foldAla dually ["World", "Hello"] = "HelloWorld"
```
See https://pursuit.purescript.org/packages/purescript-monoid/1.0.0/docs/Data.Monoid.Dual

### Re-exported from Data.Isotype.Profunctor:

#### `starly`

``` purescript
starly :: forall f a b c d. Iso (a -> f b) (c -> f d) (Star f a b) (Star f c d)
```

#### `costarly`

``` purescript
costarly :: forall f a b c d. Iso (f a -> b) (f c -> d) (Costar f a b) (Costar f c d)
```

### Re-exported from Data.Isotype.Semiring:

#### `multiplicatively`

``` purescript
multiplicatively :: Isotype Multiplicative
```

#### `additively`

``` purescript
additively :: Isotype Additive
```

### Re-exported from Data.Isotype.Types:

#### `Isotype`

``` purescript
type Isotype f = forall s t. Iso s t (f s) (f t)
```

