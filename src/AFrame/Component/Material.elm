module AFrame.Component.Material exposing (Property(..), Side(..), material)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


type Side
    = Front
    | Back
    | Double


type Property
    = DepthTest Bool
    | FlatShading Bool
    | Opacity Float
    | Transparent Bool
    | Side Side
    | Visible Bool
    | Offset Float Float
    | Repeat Float Float
    | Npot Bool


propertyToString : Property -> String
propertyToString property =
    case property of
        DepthTest value ->
            "depthTest: " ++ (toString value)

        FlatShading value ->
            "flatShading: " ++ (toString value)

        Opacity value ->
            "opacity: " ++ (toString value)

        Transparent value ->
            "transparent: " ++ (toString value)

        Side side ->
            "side: " ++ ((String.toLower << toString) side)

        Visible value ->
            "visible: " ++ (toString value)

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

        Npot value ->
            "npot: " ++ (toString value)


material : List Property -> Attribute msg
material properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "material"
