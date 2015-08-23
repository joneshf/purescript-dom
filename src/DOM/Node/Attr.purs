module DOM.Node.Attr where

import Prelude

import           Data.Nullable
import           Data.Maybe (Maybe(..))
import           Control.Monad.Eff (Eff())

import           DOM
import           DOM.Node.Types
import qualified DOM.Node.Element as E

attr :: String -> String -> Attr
attr x y = { localName: x, value: y }

attrNS :: String -> String -> Maybe String -> Maybe String -> AttrNS
attrNS ln v ns pr = { localName       : ln
                    , value           : v
                    , namespaceURI    : toNullable ns
                    , prefix          : toNullable pr
                    , legacyName      : ln
                    , legacySpecified : true }

setAttribute :: forall eff. Attr -> Element -> Eff (dom :: DOM | eff) Attr
setAttribute x y = E.setAttribute x.localName x.value y >> return x

setAttributeNS :: forall eff. AttrNS -> Element -> Eff (dom :: DOM | eff) AttrNS
setAttributeNS x y = E.setAttributeNS x.namespaceURI x.localName x.value y >> return x

getAttribute :: forall eff. Attr -> Element -> Eff (dom :: DOM | eff) (Nullable Attr)
getAttribute x y = E.getAttribute x.localName y >>=
                     \v -> return $
                       fmapNull (\v1 -> { localName: x.localName, value: v1 }) v

getAttributeNS :: forall eff. AttrNS -> Element -> Eff (dom :: DOM | eff) (Nullable AttrNS)
getAttributeNS x y = E.getAttributeNS x.namespaceURI x.localName y >>=
                       \v -> return $
                          fmapNull (\v1 -> { localName        : x.localName
                                           , value            : v1
                                           , legacyName       : x.legacyName
                                           , namespaceURI     : x.namespaceURI
                                           , prefix           : x.prefix
                                           , legacySpecified  : x.legacySpecified }) v

hasAttribute :: forall eff. Attr -> Element -> Eff (dom :: DOM | eff) Boolean
hasAttribute x y = E.hasAttribute x.localName y

hasAttributeNS :: forall eff. AttrNS -> Element -> Eff (dom :: DOM | eff) Boolean
hasAttributeNS x y = E.hasAttributeNS x.namespaceURI x.localName y

removeAttribute :: forall eff. Attr -> Element -> Eff (dom :: DOM | eff) Attr
removeAttribute x y = E.removeAttribute x.localName y >> return x

removeAttributeNS :: forall eff. AttrNS -> Element -> Eff (dom :: DOM | eff) AttrNS
removeAttributeNS x y = E.removeAttributeNS x.namespaceURI x.localName y >> return x

fmapNull :: forall a b. (a -> b) -> (Nullable a) -> (Nullable b)
fmapNull f x = g f $ toMaybe x
  where
    g f Nothing  = toNullable Nothing
    g f (Just v) = toNullable $ Just (f v)

(>>) :: forall a b m. (Monad m) => m a -> m b -> m b
(>>) x y = x >>= \_ -> y
