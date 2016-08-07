module Aframe.Primitives.Camera exposing (..)

{-| -}

import String exposing (toLower)
import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| -}
camera : List (Attribute msg) -> List (Html msg) -> Html msg
camera =
    node "a-camera"


far : Int -> Attribute msg
far value =
    attribute "far" (toString value)


{-| -}
fov : Int -> Attribute msg
fov value =
    attribute "fov" (toString value)


{-| -}
lookControlsEnabled : Bool -> Attribute msg
lookControlsEnabled value =
    attribute "look-controls-enabled" (toLower (toString value))


{-| -}
near : Float -> Attribute msg
near value =
    attribute "near" (toString value)


{-| -}
wasdControlsEnabled : Bool -> Attribute msg
wasdControlsEnabled value =
    attribute "wasd-controls-enabled" (toLower (toString value))
