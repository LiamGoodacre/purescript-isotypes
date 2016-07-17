module Data.Isotype.Types
( Isotype )
where

import Data.Lens as Lens

type Isotype f = forall s t. Lens.Iso s t (f s) (f t)
