module DOM.HTML.HTMLQuoteElement where

import Prelude (Unit)

import Effect (Effect)


import DOM.HTML.Types (HTMLQuoteElement)

foreign import cite :: HTMLQuoteElement -> Effect Boolean
foreign import setCite :: Boolean -> HTMLQuoteElement -> Effect Unit
