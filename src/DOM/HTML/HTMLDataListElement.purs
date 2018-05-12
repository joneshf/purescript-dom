module DOM.HTML.HTMLDataListElement where

import Effect (Effect)

import DOM.HTML.Types (HTMLDataListElement)
import DOM.Node.Types (HTMLCollection)

foreign import options :: HTMLDataListElement -> Effect HTMLCollection
