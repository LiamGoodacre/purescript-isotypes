## Module Data.Isotype.Contravariant

Contravariant newtypes

#### `comparatively`

``` purescript
comparatively :: forall a b. Iso (a -> a -> Ordering) (b -> b -> Ordering) (Comparison a) (Comparison b)
```

#### `equivalently`

``` purescript
equivalently :: forall a b. Iso (a -> a -> Boolean) (b -> b -> Boolean) (Equivalence a) (Equivalence b)
```

#### `oppositely`

``` purescript
oppositely :: forall a b c d. Iso (b -> a) (d -> c) (Op a b) (Op c d)
```

#### `predicately`

``` purescript
predicately :: forall a b. Iso (a -> Boolean) (b -> Boolean) (Predicate a) (Predicate b)
```


