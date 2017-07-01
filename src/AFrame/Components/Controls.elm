module AFrame.Components.Controls exposing (Property(..), Hand, daydreamControls, gearvrControls)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


{-| -}
type Hand
    = Left
    | Right


type Property
    = ArmModel Bool
    | ButtonColor Color
    | ButtonTouchedColor Color
    | ButtonHighlightColor Color
    | Hand (Maybe Hand)
    | Model Bool
    | RotationOffset Float


propertyToString : Property -> String
propertyToString property =
    case property of
        ArmModel value ->
            "armModel: " ++ ((String.toLower << toString) value)

        ButtonColor value ->
            "buttonColor: " ++ (colorToHex value)

        ButtonTouchedColor value ->
            "buttonTouchedColor: " ++ (colorToHex value)

        ButtonHighlightColor value ->
            "buttonHightlightColor: " ++ (colorToHex value)

        Hand value ->
            case value of
                Just Left ->
                    "hand: left"

                Just Right ->
                    "hand: right"

                Nothing ->
                    ""

        Model value ->
            "model: " ++ ((String.toLower << toString) value)

        RotationOffset value ->
            "rotationOffset: " ++ (toString value)


{-| -}
daydreamControls : List Property -> Attribute msg
daydreamControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "daydream-controls"


{-| -}
gearvrControls : List Property -> Attribute msg
gearvrControls properties =
    properties
        |> List.map propertyToString
        |> String.join ""
        |> attribute "gearvr-controls"
