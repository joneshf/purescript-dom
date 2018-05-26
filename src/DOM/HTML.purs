module DOM.HTML where

import Effect (Effect)

import DOM.HTML.Types (Window)

foreign import window :: Effect Window
