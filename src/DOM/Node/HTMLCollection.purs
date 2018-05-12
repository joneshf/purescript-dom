module DOM.Node.HTMLCollection
  ( length
  , item
  , namedItem
  , toArray
  ) where

import Prelude
import Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import DOM.Node.Types (Element, HTMLCollection, ElementId)

-- | The number of elements in a HTMLCollection.
foreign import length :: HTMLCollection -> Effect Int

-- | The elements of an HTMLCollection represented in an array.
foreign import toArray :: HTMLCollection -> Effect (Array Element)

-- | The element in a HTMLCollection at the specified index, or Nothing if no such
-- | element exists.
item :: Int -> HTMLCollection -> Effect (Maybe Element)
item i = map toMaybe <<< _item i

foreign import _item :: Int -> HTMLCollection -> Effect (Nullable Element)

-- | The first element with the specified name or ID in a HTMLCollection, or
-- | Nothing if no such element exists.
namedItem :: ElementId -> HTMLCollection -> Effect (Maybe Element)
namedItem id = map toMaybe <<< _namedItem id

foreign import _namedItem :: ElementId -> HTMLCollection -> Effect (Nullable Element)
