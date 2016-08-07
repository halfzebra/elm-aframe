module AFrame.Extra.Physics exposing (grid, dynamicBody, staticBody)

{-| Components for A-Frame physics integration.

# Primitives
@docs grid

# Attributes
@docs dynamicBody, staticBody

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| Floor.

    grid [ staticBody ] []
-}
grid : List (Attribute msg) -> List (Html msg) -> Html msg
grid =
    node "a-grid"


{-| A freely-moving object. Dynamic bodies have mass,
collide with other objects, bounce or slow during collisions,
and fall if gravity is enabled.

    box [ dynamicBody ] []
-}
dynamicBody : Attribute msg
dynamicBody =
    attribute "dynamic-body" ""


{-| A fixed-position or animated object.
Other objects may collide with static bodies,
but static bodies themselves are unaffected by gravity and collisions.

    box [ staticBody ] []
-}
staticBody : Attribute msg
staticBody =
    attribute "static-body" ""
