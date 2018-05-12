module DOM.Event.PopstateEvent
  ( eventToPopStateEvent
  ) where

import DOM.Event.Types (Event, PopStateEvent, readPopStateEvent)
import Foreign (F, toForeign)
import Prelude ((<<<))

eventToPopStateEvent :: Event -> F PopStateEvent
eventToPopStateEvent = readPopStateEvent <<< toForeign
