module Test.DOM.HTML.Document where

import Prelude

import DOM.HTML (window)
import DOM.HTML.Document (ReadyState(..), readyState)
import DOM.HTML.Window (document)
import Effect.Class (liftEffect)
import Test.Unit (TestSuite, describe, it)
import Test.Unit.Assert (shouldEqual)

domHtmlDocumentTests :: TestSuite
domHtmlDocumentTests = do
  describe "readyState" do
    it "should return a sensible readyState" do
      rs <- liftEffect $ readyState =<< document =<< window
      rs `shouldEqual` Complete
