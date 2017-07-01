module AFrame.Components.Camera exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


type Property
    = Active Bool
    | Far Float
    | Fov Float
    | Near Float
    | UserHeight Float
    | Zoom Float


propertyToString : Property -> String
propertyToString property =
    case property of
        Active value ->
            "active: " ++ ((String.toLower << toString) value)

        Far value ->
            "far: " ++ (toString value)

        Fov value ->
            "fov: " ++ (toString value)

        Near value ->
            "near: " ++ (toString value)

        UserHeight value ->
            "userheight: " ++ (toString value)

        Zoom value ->
            "zoom: " ++ (toString value)


camera : List Property -> Attribute msg
camera properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "camera"
