module DOM.HTML.HTMLTemplateElement where

import Effect (Effect)


import DOM.HTML.Types (HTMLTemplateElement)
import DOM.Node.Types (DocumentFragment)

foreign import content :: HTMLTemplateElement -> Effect DocumentFragment
