module DOM.HTML.Selection
  ( SelectionType
  , anchorNode
  , anchorOffset
  , focusNode
  , focusOffset
  , isCollapsed
  , rangeCount
  , type_
  ) where

import Prelude
import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML.Types (Range, SELECTION, Selection)
import DOM.Node.Types (Node)
import Data.Maybe (Maybe(..), fromJust)

foreign import anchorNode
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Node

foreign import anchorOffset
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Int

foreign import focusNode
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Node

foreign import focusOffset
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Int

foreign import isCollapsed
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Boolean

foreign import rangeCount
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Int

foreign import typeImpl
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) String

type_
  :: forall eff
   . Partial
  => Selection
  -> Eff (selection :: SELECTION | eff) SelectionType
type_ = typeImpl >=> pure <<< fromJust <<< toSelectionType

data SelectionType
  = None
  | Caret
  | Range

toSelectionType :: String -> Maybe SelectionType
toSelectionType "None" = Just None
toSelectionType "Caret" = Just Caret
toSelectionType "Range" = Just Range
toSelectionType _ = Nothing

foreign import getRangeAt
  :: forall eff
   . Int
  -> Selection
  -> Eff (selection :: SELECTION | eff) Range

foreign import collapse
  :: forall eff
   . Node
  -> Int
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import extend
  :: forall eff
   . Node
  -> Int
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import collapseToStart
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import collapseToEnd
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import selectAllChildren
  :: forall eff
   . Node
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import addRange
  :: forall eff
   . Range
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import removeRange
  :: forall eff
   . Range
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import removeAllRanges
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) Unit

foreign import deleteFromDocument
  :: forall eff
   . Selection
  -> Eff (dom :: DOM, selection :: SELECTION | eff) Unit

foreign import toString
  :: forall eff
   . Selection
  -> Eff (selection :: SELECTION | eff) String

foreign import containsNode
  :: forall eff
   . Node
  -> Boolean
  -> Selection
  -> Eff (selection :: SELECTION | eff) Boolean

foreign import setBaseAndExtent
  :: forall eff
   . Node
  -> Int
  -> Node
  -> Int
  -> Selection
  -> Eff (selection :: SELECTION | eff) Unit
