module DOM.Node.ChildNode where

import Prelude
import Effect (Effect)
import DOM.Node.Types (ChildNode)

-- | Removes the node from its parent.
foreign import remove :: ChildNode -> Effect Unit
