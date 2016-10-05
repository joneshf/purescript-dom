module DOM.HTML.Event.DragEvent.DataTransfer
  ( DataTransfer
  , files
  ) where

import Prelude
import DOM.File.Types (FileList)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import data DataTransfer :: *

-- | Contains a list of all the local files available on the data transfer.
-- | Empty if the drag operation doesn't involve dragging files.
-- |
-- | It's possible that a drag operation may have null files, instead of an
-- | empty file list. In these cases Nothing is returned.
files :: DataTransfer -> Maybe FileList
files = toMaybe <$> filesNullable

foreign import filesNullable :: DataTransfer -> Nullable FileList
