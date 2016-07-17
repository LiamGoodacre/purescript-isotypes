## Module Data.Isotype.Ala

Newtype functions influenced by [http://hackage.haskell.org/package/newtype-0.2/docs/Control-Newtype.html]

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


