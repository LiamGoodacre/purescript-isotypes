## Module Data.Isotype.Semiring

Additive and Multiplicative for Semiring

#### `additively`

``` purescript
additively :: Isotype Additive
```

A `Semiring` supports (among other operations) an `addition` function and
a `zero` value.  Together they form a monoid.  The type `Additive t`
implements this monoid for its `Monoid` instance:
```purescript
Additive a <> Additive b = Additive (a + b)
Additive 3.0 <> Additive 4.0 = Additive 7.0

foldAla additively [] = zero
foldAla additively [a, b] = a + b
foldAla additively [3.0, 4.0] = 7.0
```

#### `multiplicatively`

``` purescript
multiplicatively :: Isotype Multiplicative
```

A `Semiring` supports (among other operations) a `multiplication` function
and a `one` value.  Together they form a monoid.  The type
`Multiplicative t` implements this monoid for its `Monoid` instance:
```purescript
Multiplicative a <> Multiplicative b = Multiplicative (a * b)
Multiplicative 3.0 <> Multiplicative 4.0 = Multiplicative 12.0

foldAla multiplicatively [] = one
foldAla multiplicatively [a, b] = a * b
foldAla multiplicatively [3.0, 4.0] = 12.0
```


