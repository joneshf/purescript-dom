module DOM.XHR.Types where

foreign import data XMLHttpRequestEventTarget :: Type
foreign import data XMLHttpRequestUpload :: Type
foreign import data XMLHttpRequest :: Type
foreign import data FormData :: Type

-- | Possible values of a `FormData`.
data FormDataValue
  = FormDataString String
  | FormDataFile String File -- ^ File name and `File` object.
  | FormDataBlob String Blob -- ^ Blob name and `Blob` object.
