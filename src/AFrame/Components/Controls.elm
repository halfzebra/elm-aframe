module AFrame.Components.Controls exposing (Property(..), Hand(..), daydreamControls, gearvrControls, viveControls, oculusTouchControls)

{-| This module provides commponents for defining controllers for Google Daydream, Gear VR, HTC Vive and Oculus Touch

# Components
@docs daydreamControls, gearvrControls, viveControls, oculusTouchControls

# Types
@docs Property, Hand

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Color exposing (Color)
import Color.Convert exposing (colorToHex)


{-| Controller's hand
-}
type Hand
    = Left
    | Right


{-| Controller's properties
-}
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
            "armModel: " ++ ((String.toLower << toString) value)

        ButtonColor value ->
            "buttonColor: " ++ (colorToHex value)

        ButtonTouchedColor value ->
            "buttonTouchedColor: " ++ (colorToHex value)

        ButtonHighlightColor value ->
            "buttonHightlightColor: " ++ (colorToHex value)

        Hand value ->
            "hand: " ++ ((String.toLower << toString) value)

        Model value ->
            "model: " ++ ((String.toLower << toString) value)

        RotationOffset value ->
            "rotationOffset: " ++ (toString value)


{-| Deffine a Daydream controller with a list of properties
-}
daydreamControls : List Property -> Attribute msg
daydreamControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "daydream-controls"


{-| Deffine a Gear VR controller with a list of properties
-}
gearvrControls : List Property -> Attribute msg
gearvrControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "gearvr-controls"


{-| Deffine a HTC Vive controller with a list of properties
-}
viveControls : List Property -> Attribute msg
viveControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "vive-controls"


{-| Deffine a Oculus Touch controller with a list of properties
-}
oculusTouchControls : List Property -> Attribute msg
oculusTouchControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "oculus-touch-controls"
