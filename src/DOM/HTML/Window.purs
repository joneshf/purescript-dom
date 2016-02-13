module DOM.HTML.Window where

import Control.Monad.Eff (Eff())

import DOM (DOM)
import DOM.HTML.Types (Location, Window, Navigator, HTMLDocument)

foreign import document :: forall eff. Window -> Eff (dom :: DOM | eff) HTMLDocument

foreign import navigator :: forall eff. Window -> Eff (dom :: DOM | eff) Navigator

foreign import location :: forall eff. Window -> Eff (dom :: DOM | eff) Location
