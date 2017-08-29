module DOM.XHR.FormData
	( FormDataValue(..)
	, appendString
	, appendWithName
	, newFormData
	, toFormData
	) where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (EffFn3, runEffFn3, EffFn4, runEffFn4)
import Control.Monad.ST (ST)
import Data.Foldable (class Foldable, for_)
import Data.Tuple (Tuple(..))
import DOM (DOM)
import DOM.File.Types (Blob, File)
import DOM.XHR.Types (FormData)

-- | Possible values of a `FormData`.
data FormDataValue
  = FormDataString String
  | FormDataFile String File -- ^ File name and `File` object.
  | FormDataBlob String Blob -- ^ Blob name and `Blob` object.

-- | Convert an associated array of keys and values to a `FormData`.
toFormData :: forall eff f h.
              Foldable f
           => f (Tuple String FormDataValue)
           -> Eff (dom :: DOM, st :: ST h | eff) FormData
toFormData dat = do
  result <- newFormData

  for_ dat $ case _ of
    Tuple key (FormDataString    val) -> appendString   result key val
    Tuple key (FormDataFile name val) -> appendWithName result key val name
    Tuple key (FormDataBlob name val) -> appendWithName result key val name

  pure result

foreign import newFormData :: forall eff h. Eff (dom :: DOM, st :: ST h | eff) FormData

foreign import appendStringImpl
  :: forall eff h.
     EffFn3 (dom :: DOM, st :: ST h | eff) FormData String String Unit

-- | Append a string value to a FormData object.
appendString :: forall h eff.
                FormData
             -> String
             -> String
             -> Eff (dom :: DOM, st :: ST h | eff) Unit
appendString = runEffFn3 appendStringImpl

foreign import appendWithNameImpl
  :: forall a h eff.
     EffFn4 (dom :: DOM, st :: ST h | eff) FormData String a String Unit

-- | Append a body to a FormData object, supplying a name for the file
appendWithName :: forall a h eff.
                  FormData
                -> String
                -> a
                -> String
                -> Eff (dom :: DOM, st :: ST h | eff) Unit
appendWithName = runEffFn4 appendWithNameImpl
