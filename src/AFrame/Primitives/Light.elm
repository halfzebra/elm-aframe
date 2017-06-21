module AFrame.Primitives.Light exposing (..)

{-| Light primitive.

# Primitives
@docs light

# Attributes
@docs type_, intensity

# Types
@docs Light

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| Different kinds of lights
-}
type Light
    = Ambient
    | Directional
    | Hemisphere
    | Point
    | Spot


{-| The light primitive adjusts the lighting setup of the scene.
-}
light : List (Attribute msg) -> List (Html msg) -> Html msg
light =
    node "a-light"


{-| Set light type.

  Check https://aframe.io/docs/0.5.0/components/light.html#properties to get more information about the different kinds of lights
-}
type_ : Light -> Attribute msg
type_ light =
    let
        lightType =
            case light of
                Ambient ->
                    "ambient"

                Directional ->
                    "directional"

                Hemisphere ->
                    "hemisphere"

                Point ->
                    "point"

                Spot ->
                    "spot"
    in
        attribute "type" lightType


{-| Light strength.
-}
intensity : Float -> Attribute msg
intensity value =
    attribute "intensity" <| toString value
