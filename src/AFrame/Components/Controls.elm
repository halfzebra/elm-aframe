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
    | Hand Hand
    | Model Bool
    | RotationOffset Float


propertyToString : Property -> String
propertyToString property =
    case property of
        ArmModel value ->
            armModel value

        ButtonColor value ->
            buttonColor value

        ButtonTouchedColor value ->
            buttonTouchedColor value

        ButtonHighlightColor value ->
            buttonHightlightColor value

        Hand value ->
            hand value

        Model value ->
            model value

        RotationOffset value ->
            rotationOffset value


{-| -}
hand : Maybe Hand -> String
hand hand =
    case hand of
        Just Left ->
            "hand: left"

        Just Right ->
            "hand: right"

        Nothing ->
            ""


{-| -}
armModel : Bool -> String
armModel value =
    "armModel: " ++ ((String.toLower << toString) value)


{-| -}
buttonColor : Color -> String
buttonColor value =
    "buttonColor: " ++ (colorToHex value)


{-| -}
buttonTouchedColor : Color -> String
buttonTouchedColor value =
    "buttonTouchedColor: " ++ (colorToHex value)


{-| -}
buttonHightlightColor : Color -> String
buttonHightlightColor value =
    "buttonHightlightColor: " ++ (colorToHex value)


{-| -}
model : Bool -> String
model value =
    "model: " ++ ((String.toLower << toString) value)


{-| -}
rotationOffset : Float -> String
rotationOffset value =
    "rotationOffset: " ++ (toString value)


{-| -}
daydreamControls : List Property -> Attribute msg
daydreamControls properties =
    properties
        |> List.map propertyToString
        |> String.join " "
        |> attribute "daydream-controls"


{-| -}
gearvrControls : List Property -> Attribute msg
gearvrControls properties =
    properties
        |> List.map propertyToString
        |> String.join ""
        |> attribute "gearvr-controls"
