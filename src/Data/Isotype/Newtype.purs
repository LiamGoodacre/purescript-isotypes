module Data.Isotype.Newtype where

import Data.Newtype (class Newtype, wrap, unwrap)
import Data.Lens as Lens

newtypeIso :: forall s t a b. (Newtype a s, Newtype b t) => Lens.Iso s t a b
newtypeIso = Lens.iso wrap unwrap
