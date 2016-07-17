## Module Data.Isotype.Instance

Implementations of type class methods for Isotypes

#### `foldMapIsotype`

``` purescript
foldMapIsotype :: forall i a m. Isotype i -> (a -> m) -> i a -> m
```

Foldable.foldMap for an Isotype

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

#### `imapIsotype`

``` purescript
imapIsotype :: forall i a b. Isotype i -> (a -> b) -> (b -> a) -> i a -> i b
```

Invariant.imap for an Isotype

#### `mapIsotype`

``` purescript
mapIsotype :: forall i a b. Isotype i -> (a -> b) -> i a -> i b
```

Functor.map for an Isotype

#### `applyIsotype`

``` purescript
applyIsotype :: forall i a b. Isotype i -> i (a -> b) -> i a -> i b
```

Apply.apply for an Isotype

#### `pureIsotype`

``` purescript
pureIsotype :: forall i a. Isotype i -> a -> i a
```

Applicative.pure for an Isotype

#### `bindIsotype`

``` purescript
bindIsotype :: forall i a b. Isotype i -> i a -> (a -> i b) -> i b
```

Bind.bind for an Isotype

#### `extendIsotype`

``` purescript
extendIsotype :: forall i b a. Isotype i -> (i a -> b) -> i a -> i b
```

Extend.extend for Isotype

#### `extractIsotype`

``` purescript
extractIsotype :: forall i a. Isotype i -> i a -> a
```

Comonad.extract for Isotype

#### `compareIsotype`

``` purescript
compareIsotype :: forall i a. Ord a => Isotype i -> i a -> i a -> Ordering
```

Ord.compare for Isotype


