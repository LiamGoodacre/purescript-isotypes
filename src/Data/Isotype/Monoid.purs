-- | Monoidal newtypes
module Data.Isotype.Monoid
( dually,
  endoly,
  firstly,
  lastly )
where

import Data.Lens as Lens
import Data.Isotype.Types (Isotype)
import Data.Maybe (Maybe)
import Data.Maybe.First (runFirst, First(First))
import Data.Maybe.Last (runLast, Last(Last))
import Data.Monoid.Dual (runDual, Dual(Dual))
import Data.Monoid.Endo (runEndo, Endo(Endo))

dually :: Isotype Dual
dually = Lens.iso Dual runDual

endoly :: forall a b. Lens.Iso (a -> a) (b -> b) (Endo a) (Endo b)
endoly = Lens.iso Endo runEndo

firstly :: forall a b. Lens.Iso (Maybe a) (Maybe b) (First a) (First b)
firstly = Lens.iso First runFirst

lastly :: forall a b. Lens.Iso (Maybe a) (Maybe b) (Last a) (Last b)
lastly = Lens.iso Last runLast
