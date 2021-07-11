module AFrame.Components.Line exposing (Property(..), line)

import Html exposing (Attribute)
import Html.Attribute exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


type Property
    = Start Float Float Float
    | End Float Float Float
    | Color Color
    | Opacity Float
    | Visible Bool


propertyToString : Property -> String
propertyToString property =
    case property of
        Start x y z ->
            [ x, y, z ]
                |> List.map toString
                |> String.join " "
                |> flip (++) "start: "

        End x y z ->
            [ x, y, z ]
                |> List.map toString
                |> String.join " "
                |> flip (++) "end: "

        Color color ->
            "color: " ++ (colorToHex color)

        Opacity value ->
            "opacity: " ++ (toString value)

        Visible value ->
            "visible: " ++ ((String.toLower << toString) value)


line : List Property -> Attribute msg
line properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "line"
