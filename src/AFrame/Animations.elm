module AFrame.Animations
    exposing
        ( animation
        , attribute_
        , begin
        , direction
        , dur
        , easing
        , fill
        , from
        , repeat
        , to
        )

{-| This module provides a set of functions for declaring A-Frame animations.

# Definition
@docs animation

# Animation attributes
@docs attribute_, begin, direction, dur, easing, fill, from, repeat, to

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


type Direction
    = Alternate
    | AlternateReverse
    | Normal
    | Reverse


type Fill
    = Backwards
    | Both
    | Forwards
    | None


type Repeat
    = Times Int
    | Repeat
    | Indefinite


{-| Animation declaration.

    box
        []
        [ animation
            [ attribute "rotation"
            , dur 10000
            , fill Fill.Forward
            , to 0 360 0
            , repeat Repeat.Indefinite
            ]
            []
        ]
-}
animation : List (Attribute msg) -> List (Html msg) -> Html msg
animation =
    node "a-animation"


{-| Attribute to animate.

    animation [ attribute "rotation" ] []
-}
attribute_ : String -> Attribute msg
attribute_ value =
    attribute "attribute" value


{-| Delay (in milliseconds) or event name to wait on before beginning animation.

    animation [ begin 5000 ] []
-}
begin : Int -> Attribute msg
begin value =
    attribute "begin" (toString value)


{-| Direction of the animation (between from and to).
    One of alternate, alternateReverse, normal, reverse.

    animation [ direction "reverse" ] []
-}
direction : Direction -> Attribute msg
direction value =
    (case value of
        Alternate ->
            "alternate"

        AlternateReverse ->
            "alternateReverse"

        Normal ->
            "normal"

        Reverse ->
            "reverse"
    )
        |> attribute "direction"


{-| Duration in (milliseconds) of the animation.

    animation [ dur 5000 ] []
-}
dur : Int -> Attribute msg
dur value =
    attribute "dur" (toString value)


{-| Easing function of the animation.

    animation [ easing "rotation" ] []
-}
easing : String -> Attribute msg
easing value =
    attribute "easing" value


{-| Determines effect of animation when not actively in play.
    One of backwards, both, forwards, none.

    animation [ fill "rotation" ] []
-}
fill : Fill -> Attribute msg
fill value =
    (case value of
        Backwards ->
            "backwards"

        Both ->
            "both"

        Forwards ->
            "forwards"

        None ->
            "none"
    )
        |> attribute "fill"


{-| Starting value.

    animation [ from "0 120 0" ] []
-}
from : Float -> Float -> Float -> Attribute msg
from x y z =
    [ x, y, z ]
        |> List.map toString
        |> List.intersperse " "
        |> String.concat
        |> attribute "from"


{-| Repeat count or indefinite.

    animation [ repeat "5000" ] []
-}
repeat : Repeat -> Attribute msg
repeat value =
    (case value of
        Number n ->
            toString n

        Repeat ->
            "repeat"

        Indefinite ->
            "indefinite"
    )
        |> attribute "repeat"


{-| Ending value. Must be specified.

    animation [ to "0 360 0" ] []
-}
to : Float -> Float -> Float -> Attribute msg
to x y z =
    [ x, y, z ]
        |> List.map toString
        |> List.intersperse " "
        |> String.concat
        |> attribute "to"
