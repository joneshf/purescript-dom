module DOM.Event.PopstateEvent
  ( eventToPopStateEvent
  ) where

import DOM.Event.Types (Event, PopStateEvent, readPopStateEvent)
import Foreign (F, unsafeToForeign)
import Prelude ((<<<))

eventToPopStateEvent :: Event -> F PopStateEvent
eventToPopStateEvent = readPopStateEvent <<< unsafeToForeign
