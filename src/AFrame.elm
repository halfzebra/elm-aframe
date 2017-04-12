module AFrame exposing (..)

{-| [A-Frame](https://aframe.io/docs/0.2.0/guide/) is an open-source framework for creating 3D and virtual reality experiences on the web.

# Scene
@docs scene

# Entity
@docs entity

-}

import Html exposing (node, Html, Attribute)


{-| A scene is represented by the <a-scene> element.
    The scene is the global root object,
    and all entities are contained within the scene.

    main =
        scene [] [ box [] [] ]
-}
scene : List (Attribute msg) -> List (Html msg) -> Html msg
scene =
    node "a-scene"


{-| An entity is represented by the <a-entity> element.
    As defined in the entity-component-system pattern,
    entities are placeholder objects to which we plug in components
    to in order to provide them apperance, behavior, and functionality.

    entity [ rotation 90 0 0 ] []
-}
entity : List (Attribute msg) -> List (Html msg) -> Html msg
entity =
    node "a-entity"
