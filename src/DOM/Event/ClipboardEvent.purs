module DOM.Event.ClipboardEvent
  ( module T
  , module DT
  , eventToClipboardEvent
  , clipboardData
  ) where

import Prelude
import DOM.Event.Types (Event, ClipboardEvent, readClipboardEvent)
import DOM.Event.Types (ClipboardEvent, clipboardEventToEvent, readClipboardEvent) as T
import DOM.HTML.Event.DataTransfer (DataTransfer) as DT
import Foreign (F, unsafeToForeign)

eventToClipboardEvent :: Event -> F ClipboardEvent
eventToClipboardEvent = readClipboardEvent <<< unsafeToForeign

foreign import clipboardData :: ClipboardEvent -> DT.DataTransfer
