module AFrame.Components.LaserControls exposing (Property(..), Hand(..), laserControls)

{-| This module provides tracked controls with a laser or ray cursor shooting out to be used for input and interactions.

# Components
@docs laserControls

# Types
@docs Property, Hand

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


{-| Controller's hand
-}
type Hand
    = Left
    | Right


{-| Controller's properties
-}
type Property
    = Hand Hand


propertyToString : Property -> String
propertyToString property =
    case property of
        Hand value ->
            "hand: " ++ ((String.toLower << toString) value)


{-| Deffine a laser-controls component
-}
laserControls : List Property -> Attribute msg
laserControls properties =
    properties
        |> List.map propertyToString
        |> String.join "; "
        |> attribute "laser-controls"
