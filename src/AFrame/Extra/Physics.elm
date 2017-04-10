module AFrame.Extra.Physics
    exposing
        ( grid
        , dynamicBody
        , staticBody
        , kinematicBody
        )

{-| Components for A-Frame physics integration.

# Primitives
@docs grid

# Primitive attributes
@docs dynamicBody, staticBody

# Camera attributes
@docs kinematicBody

-}

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (attribute)


{-| Floor.

    grid [ staticBody ] []
-}
grid : List (Attribute msg) -> List (Html msg) -> Html msg
grid =
    node "a-grid"


{-| A freely-moving object.
    Dynamic bodies have mass, collide with other objects,
    bounce or slow during collisions, and fall if gravity is enabled.

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


{-| Player-controlled body, which can move but is not affected (directly)
    by the physics engine. Intended for use on the player's model.
    Gravity and collisions are simulated,
    without giving full control to the physics engine.

    box [ kinematicBody ] []
-}
kinematicBody : Attribute msg
kinematicBody =
    attribute "kinematic-body" ""
