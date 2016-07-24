module Test.Main where

import Prelude
import Control.Monad.Aff.Console (log)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Data.Functor.Contravariant (cmap)
import Data.Isotype.Ala (foldAla)
import Data.Isotype.Contravariant (oppositely)
import Data.Isotype.HeytingAlgebra (conjunctly, disjunctly)
import Data.Isotype.Monoid (firstly, lastly, endoly, dually)
import Data.Isotype.Semiring (additively, multiplicatively)
import Data.Lens as Lens
import Data.Maybe (Maybe(Nothing, Just))
import Test.Unit (suite, test)
import Test.Unit.Assert as Assert
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

main :: forall eff. Eff (console :: CONSOLE, testOutput :: TESTOUTPUT | eff) Unit
main = runTest do
  suite "Contravariant" do
    test "Comparison - comparatively" do
      log "todo"

    test "Equivalence - equivalently" do
      log "todo"

    test "Op - oppositely" do
      Assert.equal "20.0" (Lens.over oppositely (cmap (10.0 * _)) show 2.0)

    test "Predicate - predicately" do
      log "todo"

  suite "HeytingAlgebra" do
    test "Conj - conjunctly" do
      Assert.assert "conjunction [] is true" (foldAla conjunctly [])
      Assert.assertFalse "conjunction [true, false] is false" (foldAla conjunctly [true, false])

    test "Disj - disjunctly" do
      Assert.assertFalse "disjunction [] is false" (foldAla disjunctly [])
      Assert.assert "disjunction [false, true] is true" (foldAla disjunctly [false, true])

  suite "Monoid" do
    test "Dual - dually" do
      Assert.equal "HelloWorld" (foldAla dually ["World", "Hello"])

    test "Endo - endoly" do
      Assert.equal "OMG!" (foldAla endoly [(_ <> "!"), ("O" <> _), (_ <> "G")] "M")

    test "First - firstly" do
      Assert.equal Nothing (foldAla firstly [] :: Maybe Unit)
      Assert.equal Nothing (foldAla firstly [Nothing] :: Maybe Unit)
      Assert.equal (Just "first") (foldAla firstly [Nothing, Just "first", Nothing, Just "last", Nothing])

    test "Last - lastly" do
      Assert.equal Nothing (foldAla lastly [] :: Maybe Unit)
      Assert.equal Nothing (foldAla lastly [Nothing] :: Maybe Unit)
      Assert.equal (Just "last") (foldAla lastly [Nothing, Just "first", Nothing, Just "last", Nothing])

  suite "Profunctor" do
    test "todo" do
      log "todo"

  suite "Semiring" do
    test "Additive - additively" do
      Assert.equal 0.0 (foldAla additively [])
      Assert.equal 7.0 (foldAla additively [3.0, 4.0])

    test "Multiplicative - multiplicatively" do
      Assert.equal 1.0 (foldAla multiplicatively [])
      Assert.equal 12.0 (foldAla multiplicatively [3.0, 4.0])
