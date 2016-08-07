module AFrame.Primitives.Cursor exposing (..)

{-| -}

import String exposing (toLower)
import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| -}
cursor : List (Attribute msg) -> List (Html msg) -> Html msg
cursor =
    node "a-cursor"


{-| -}
fuse : Bool -> Attribute msg
fuse value =
    attribute "fuse" (toLower (toString value))


{-| -}
maxDistance : Int -> Attribute msg
maxDistance value =
    attribute "max-distance" (toString value)


{-| -}
timeout : Int -> Attribute msg
timeout value =
    attribute "timeout" (toString value)
