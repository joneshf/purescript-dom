module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Timer (setTimeout)
import Test.DOM.HTML.Document (domHtmlDocumentTests)
import Test.DOM.HTML.Window (domHtmlWindowTests)
import Test.DOM.Node.DOMTokenList (domTokenListTests)
import Test.Unit.Main (runTest, exit)

main :: Effect Unit
main = do
  runTest do
    domHtmlDocumentTests
    domHtmlWindowTests
    domTokenListTests
  void $ setTimeout 100 $ exit 0
