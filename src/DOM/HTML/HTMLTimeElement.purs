module DOM.HTML.HTMLTimeElement where

import Prelude (Unit)

import Effect (Effect)


import DOM.HTML.Types (HTMLTimeElement)

foreign import dateTime :: HTMLTimeElement -> Effect String
foreign import setDateTime :: String -> HTMLTimeElement -> Effect Unit
