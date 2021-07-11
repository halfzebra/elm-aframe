module AFrame.Component.Material exposing (Property(..), Side(..), material)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


type Side
    = Front
    | Back
    | Double


type Property
    = Color Color
    | DepthTest Bool
    | FlatShading Bool
    | Fog Bool
    | Height Int
    | Metalness Float
    | Npot Bool
    | Offset Float Float
    | Opacity Float
    | Repeat Float Float
    | Roughness Float
    | Side Side
    | Src String
    | Transparent Bool
    | Visible Bool
    | Width Int


propertyToString : Property -> String
propertyToString property =
    case property of
        Color color ->
            "color: " ++ (colorToHex color)

        DepthTest value ->
            "depthTest: " ++ ((String.toLower << toString) value)

        FlatShading value ->
            "flatShading: " ++ ((String.toLower << toString) value)

        Fog value ->
            "fog: " ++ ((String.toLower << toString) value)

        Height value ->
            "height: " ++ (toString value)

        Opacity value ->
            "opacity: " ++ (toString value)

        Transparent value ->
            "trasparent: " ++ ((String.toLower << toString) value)

        Roughness value ->
            "roughness: " ++ (toString value)

        Side side ->
            "side: " ++ ((String.toLower << toString) side)

        Visible value ->
            "visible: " ++ ((String.toLower << toString) value)

        Offset x y ->
            [ x, y ]
                |> List.map toString
                |> String.join " "
                |> flip (++) "offset: "

        Repeat x y ->
            [ x, y ]
                |> List.map toString
                |> String.join " "
                |> flip (++) "repeat: "

        Metalness value ->
            "metalness: " ++ (toString value)

        Npot value ->
            "npot: " ++ ((String.toLower << toString) value)

        Src value ->
            "src: " ++ value

        Width value ->
            "width: " ++ (toString value)


material : List Property -> Attribute msg
material properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "material"
