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


{-| Animation declaration.

    box
        []
        [ animation
            [ attribute "rotation"
            , dur 10000
            , fill "forwards"
            , to "0 360 0"
            , repeat "indefinite"
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
direction : String -> Attribute msg
direction value =
    attribute "direction" value


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
fill : String -> Attribute msg
fill value =
    attribute "fill" value


{-| Starting value.

    animation [ from "0 120 0" ] []
-}
from : String -> Attribute msg
from value =
    attribute "from" value


{-| Repeat count or indefinite.

    animation [ repeat "5000" ] []
-}
repeat : String -> Attribute msg
repeat value =
    attribute "repeat" value


{-| Ending value. Must be specified.

    animation [ to "0 360 0" ] []
-}
to : String -> Attribute msg
to value =
    attribute "to" value
