## Module Data.Isotype.Profunctor

Profunctor newtypes

#### `starly`

``` purescript
starly :: forall f a b c d. Iso (a -> f b) (c -> f d) (Star f a b) (Star f c d)
```

#### `costarly`

``` purescript
costarly :: forall f a b c d. Iso (f a -> b) (f c -> d) (Costar f a b) (Costar f c d)
```


