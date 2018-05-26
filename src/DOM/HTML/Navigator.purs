module DOM.HTML.Navigator where

import Effect (Effect)

import DOM.HTML.Types (Navigator)

foreign import platform :: Navigator -> Effect String
