module DOM.HTML.Event.DragEvent.DataTransfer
  ( DataTransfer
  , files
  ) where

import DOM.File.Types (FileList)
import Data.Maybe (Maybe(Just, Nothing))

foreign import data DataTransfer :: *

-- | Contains a list of all the local files available on the data transfer.
-- | Empty if the drag operation doesn't involve dragging files.
-- |
-- | It's possible that a drag operation may be null on some browsers. In
-- | these cases Nothing is returned.
files :: DataTransfer -> Maybe FileList
files = filesImpl Just Nothing

foreign import filesImpl :: (FileList -> Maybe FileList)
			 -> Maybe FileList
			 -> DataTransfer
                         -> Maybe FileList
