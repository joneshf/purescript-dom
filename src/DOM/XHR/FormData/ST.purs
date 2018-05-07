module DOM.XHR.FormData.ST
  ( newFormData
  , emptySTFormData
  , appendSTFormData
  , freeze
  , thaw
  ) where

-- | Create a new, empty FormData object that is ready for mutation.
foreign import emptySTFormData
  :: forall a eff h.
     Eff (st :: ST h | r) (STFormData h a)

foreign import appendSTFormDataImpl
  :: forall a h r.
     EffFn3 (st :: ST h | r) STFormData String a Unit

appendSTFormData = runEffFn3 appendSTFormDataImpl

foreign import setSTFormDataImpl
  :: forall a h r.
     EffFn3 (st :: ST h | r) STFormData String a Unit

setSTFormData = runEffFn3 setSTFormDataImpl

foreign import freezeImpl
  :: forall a h r.
     EffFn1 (st :: ST h | r) STFormData FormData

freeze = runEff1 freezeImpl

foreign import thawImpl
  :: forall a h r.
     EffFn1 (st :: ST h | r) FormData STFormData

thaw = runEff1 thawImpl
