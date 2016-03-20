module DOM.Node.DOMTokenList where

import Prelude

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types


-- | The number of items in a DOMTokenList.
foreign import length :: forall eff. DOMTokenList -> Eff (dom :: DOM | eff) Int

foreign import item :: forall eff. Int -> DOMTokenList -> Eff (dom :: DOM | eff) (Nullable String)
foreign import contains :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Int
foreign import add :: forall eff. Array String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit
foreign import remove :: forall eff. Array String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit
foreign import toggle :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean
foreign import toggleForce :: forall eff. String -> Boolean -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean
foreign import replace :: forall eff. String -> String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit
foreign import supports :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean
