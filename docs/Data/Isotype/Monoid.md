## Module Data.Isotype.Monoid

Monoidal newtypes

#### `dually`

``` purescript
dually :: Isotype Dual
```

#### `endoly`

``` purescript
endoly :: forall a b. Iso (a -> a) (b -> b) (Endo a) (Endo b)
```

#### `firstly`

``` purescript
firstly :: forall a b. Iso (Maybe a) (Maybe b) (First a) (First b)
```

#### `lastly`

``` purescript
lastly :: forall a b. Iso (Maybe a) (Maybe b) (Last a) (Last b)
```


