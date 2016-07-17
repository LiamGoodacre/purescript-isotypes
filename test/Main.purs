module Test.Main where

import Prelude
import Control.Monad.Aff.Console (log)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Data.Isotype (foldAla)
import Data.Isotype.HeytingAlgebra (conjunctly, disjunctly)
import Data.Isotype.Semiring (additively, multiplicatively)
import Test.Unit (suite, test)
import Test.Unit.Assert (equal)
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
      log "todo"

    test "Predicate - predicately" do
      log "todo"

  suite "HeytingAlgebra" do
    test "Conj - conjunctly" do
      equal true (foldAla conjunctly [])
      equal false (foldAla conjunctly [true, false])

    test "Disj - disjunctly" do
      equal false (foldAla disjunctly [])
      equal true (foldAla disjunctly [false, true])

  suite "Monoid" do
    test "todo" do
      log "todo"

  suite "Profunctor" do
    test "todo" do
      log "todo"

  suite "Semiring" do
    test "Additive - additively" do
      equal 0.0 (foldAla additively [])
      equal 7.0 (foldAla additively [3.0, 4.0])

    test "Multiplicative - multiplicatively" do
      equal 1.0 (foldAla multiplicatively [])
      equal 12.0 (foldAla multiplicatively [3.0, 4.0])
