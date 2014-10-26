# Module Documentation

## Module DOM

### Types

    data DOM :: !

    data Node :: *

    data NodeList :: *


## Module DOM.Event

### Types

    type Event  = { keyCode :: Number }


## Module DOM.Node

### Values

    focus :: forall e. Node -> Eff (dom :: DOM | e) Unit


## Module DOM.Types

### Types

    data ArrayBuffer :: *

    data Blob :: *

    data Document :: *

    data MozBlob :: *

    data MozChunkedArrayBuffer :: *

    data MozChunkedText :: *



