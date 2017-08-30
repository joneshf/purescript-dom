module DOM.XHR.FormData
	( FormDataValue(..)
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
import DOM.XHR.FormData.ST (newFormData, appendString, appendWithName, freeze, thaw)
import DOM.XHR.Types (FormData, FormDataValue)

-- | Convert an associated array of keys and values to a `FormData`.
toFormData :: forall eff f h. Foldable f => f (Tuple String FormDataValue) -> FormData
toFormData dat = runPure $ runST $ do
  result <- newFormData

  for_ dat $ case _ of
    Tuple key (FormDataString    val) -> appendString   result key val
    Tuple key (FormDataFile name val) -> appendWithName result key val name
    Tuple key (FormDataBlob name val) -> appendWithName result key val name

  freeze result
