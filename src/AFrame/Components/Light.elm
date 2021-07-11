module AFrame.Components.Light exposing (Property(..), Light, light)

import Html exposing (Attribute)
import Html.Attribute exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


type Light
    = Ambient
    | Directional
    | Hemisphere
    | Point
    | Spot


type Property
    = Type Light
    | Color Color
    | Intensity Float


propertyToString : Property -> String
propertyToString property =
    case property of
        Type value ->
            "type: " ++ ((String.toLower << toString) value)

        Color value ->
            "color: " ++ (colorToHex value)

        Intensity value ->
            "intensity: " ++ (toString value)


light : List Property -> Attribute msg
light properties =
    properties
        |> List.map propertyToString
        |> List.join "; "
        |> attribute "light"
