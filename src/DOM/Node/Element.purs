module DOM.Node.Element where

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types

foreign import namespaceURI :: Element -> Nullable String
foreign import prefix :: Element -> Nullable String
foreign import localName :: Element -> String
foreign import tagName :: Element -> String

foreign import id :: forall eff. Element -> Eff (dom :: DOM | eff) ElementId
foreign import setId :: forall eff. ElementId -> Element -> Eff (dom :: DOM | eff) ElementId
foreign import className :: forall eff. Element -> Eff (dom :: DOM | eff) String
foreign import setClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) String

foreign import getElementsByTagName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByTagNameNS :: forall eff. Nullable String -> String -> Element -> Eff (dom :: DOM | eff) HTMLCollection
foreign import getElementsByClassName :: forall eff. String -> Element -> Eff (dom :: DOM | eff) HTMLCollection

foreign import setAttribute :: forall eff. String -> String -> Element -> Eff (dom :: DOM | eff) String
foreign import setAttributeNS :: forall eff. (Nullable String) -> String -> String -> Element -> Eff (dom :: DOM | eff) String
foreign import getAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) (Nullable String)
foreign import getAttributeNS :: forall eff. (Nullable String) -> String -> Element -> Eff (dom :: DOM | eff) (Nullable String)
foreign import hasAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) Boolean
foreign import hasAttributeNS :: forall eff. (Nullable String) -> String -> Element -> Eff (dom :: DOM | eff) Boolean
foreign import removeAttribute :: forall eff. String -> Element -> Eff (dom :: DOM | eff) String
foreign import removeAttributeNS :: forall eff. (Nullable String) -> String -> Element -> Eff (dom :: DOM | eff) String
