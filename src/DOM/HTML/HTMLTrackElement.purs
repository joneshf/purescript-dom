module DOM.HTML.HTMLTrackElement where

import Prelude (Unit, (<<<), map)

import Effect (Effect)

import Data.Enum (toEnum)
import Data.Maybe (fromJust)


import DOM.HTML.HTMLTrackElement.ReadyState (ReadyState)
import DOM.HTML.Types (HTMLTrackElement)

foreign import kind :: forall eff.
  HTMLTrackElement -> Effect String
foreign import setKind :: forall eff.
  String -> HTMLTrackElement -> Effect Unit

foreign import src :: forall eff.
  HTMLTrackElement -> Effect String
foreign import setSrc :: forall eff.
  String -> HTMLTrackElement -> Effect Unit

foreign import srclang :: forall eff.
  HTMLTrackElement -> Effect String
foreign import setSrclang :: forall eff.
  String -> HTMLTrackElement -> Effect Unit

foreign import label :: forall eff.
  HTMLTrackElement -> Effect String
foreign import setLabel :: forall eff.
  String -> HTMLTrackElement -> Effect Unit

foreign import default :: forall eff.
  HTMLTrackElement -> Effect Boolean
foreign import setDefault :: forall eff.
  Boolean -> HTMLTrackElement -> Effect Unit

readyState :: forall eff.
  Partial =>
  HTMLTrackElement -> Effect ReadyState
readyState = map (fromJust <<< toEnum) <<< readyStateIndex

foreign import readyStateIndex :: HTMLTrackElement -> Effect Int

--   readonly attribute TextTrack track;
