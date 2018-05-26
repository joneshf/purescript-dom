module DOM.HTML.HTMLLIElement where

import Prelude (Unit)

import Effect (Effect)


import DOM.HTML.Types (HTMLLIElement)

foreign import value :: HTMLLIElement -> Effect Int
foreign import setValue :: Int -> HTMLLIElement -> Effect Unit
