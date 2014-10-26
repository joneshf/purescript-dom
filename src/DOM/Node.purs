module DOM.Node where

import Control.Monad.Eff
import DOM

foreign import focus
  " function focus(node) { \
  \   return function(){ \
  \     return node.focus(); \
  \   }; \
  \ }"
  :: forall e. Node -> Eff (dom :: DOM | e) Unit
