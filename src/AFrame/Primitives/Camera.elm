module AFrame.Primitives.Camera exposing (..)

{-| Camera primitive.

# Primitives
@docs camera

# Attributes
@docs far, fov, lookControlsEnabled, near, wasdControlsEnabled

-}

import String exposing (toLower)
import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| The camera primitive places the user somewhere within the scene.

    camera [] []
-}
camera : List (Attribute msg) -> List (Html msg) -> Html msg
camera =
    node "a-camera"


{-| Camera frustum far clipping plane.
-}
far : Int -> Attribute msg
far value =
    attribute "far" (toString value)


{-| Field of view (in degrees).
-}
fov : Int -> Attribute msg
fov value =
    attribute "fov" (toString value)


{-| Enable look controls.

    camera [ lookControlsEnabled False ] []
-}
lookControlsEnabled : Bool -> Attribute msg
lookControlsEnabled value =
    attribute "look-controls-enabled" (toLower (toString value))


{-| Camera frustum near clipping plane.
-}
near : Float -> Attribute msg
near value =
    attribute "near" (toString value)


{-| Enable WASD controls for camera.

    camera [ wasdControlsEnabled False ] []
-}
wasdControlsEnabled : Bool -> Attribute msg
wasdControlsEnabled value =
    attribute "wasd-controls-enabled" (toLower (toString value))
