module DOM.Node.DOMTokenList where

import Prelude

import Control.Monad.Eff (Eff())

import Data.Nullable (Nullable())

import DOM
import DOM.Node.Types


-- | The number of tokens in a DOMTokenList.
foreign import length :: forall eff. DOMTokenList -> Eff (dom :: DOM | eff) Int

-- | The token in a DOMTokenList at the specified index, or null if no such
-- | token exists.
foreign import item :: forall eff. Int -> DOMTokenList -> Eff (dom :: DOM | eff) (Nullable String)

-- | Test whether or not the DOMTokenList contains the given token.
foreign import contains :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean

-- | Add the given array tokens to the DOMTokenList; duplicate items are
-- | automatically pruned.
foreign import add :: forall eff. Array String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit

-- | Remove the given tokens from the DOMTokenList if they exist in it.
foreign import remove :: forall eff. Array String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit

-- | Toggle the presence of the given token in the DOMTokenList.  Returns
-- | whether or not the token was originally in the DOMTokenList.
foreign import toggle :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean

-- | Replaces an occurrence of the token string with the first token.  If the
-- | first token is not in the DOMTokenList, nothing happens.
foreign import replace :: forall eff. String -> String -> DOMTokenList -> Eff (dom :: DOM | eff) Unit

-- | Returns whether or not the DOMTokenList supports containing the given token.
-- |
-- | TODO: This doesn't actually do this; it actually always returns false,
-- | unless the token is not valid.  If it isn't, it throws an exception.
foreign import supports :: forall eff. String -> DOMTokenList -> Eff (dom :: DOM | eff) Boolean
