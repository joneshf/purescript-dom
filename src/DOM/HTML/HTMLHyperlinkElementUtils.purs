-- The `URLUtils` interface, referenced in https://www.w3.org/TR/html50/infrastructure.html#urlutils
--   now documented at https://html.spec.whatwg.org/multipage/links.html#htmlhyperlinkelementutils
module DOM.HTML.HTMLHyperlinkElementUtils where

import Prelude (Unit)

import Effect (Effect)

import DOM.HTML.Types (HTMLHyperlinkElementUtils)

foreign import href :: HTMLHyperlinkElementUtils -> Effect String
foreign import setHref :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import origin :: HTMLHyperlinkElementUtils -> Effect String

foreign import protocol :: HTMLHyperlinkElementUtils -> Effect String
foreign import setProtocol :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import username :: HTMLHyperlinkElementUtils -> Effect String
foreign import setUsername :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import password :: HTMLHyperlinkElementUtils -> Effect String
foreign import setPassword :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import host :: HTMLHyperlinkElementUtils -> Effect String
foreign import setHost :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import hostname :: HTMLHyperlinkElementUtils -> Effect String
foreign import setHostname :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import port :: HTMLHyperlinkElementUtils -> Effect String
foreign import setPort :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import pathname :: HTMLHyperlinkElementUtils -> Effect String
foreign import setPathname :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import search :: HTMLHyperlinkElementUtils -> Effect String
foreign import setSearch :: String -> HTMLHyperlinkElementUtils -> Effect Unit

foreign import hash :: HTMLHyperlinkElementUtils -> Effect String
foreign import setHash :: String -> HTMLHyperlinkElementUtils -> Effect Unit
