module AFrame.Primitives exposing (..)

{-| A-Frame primitives.

# Geometric primitives
@docs box, cone, cylinder, plane, sphere, ring, torus, image

# Scene primitives
@docs sky, light

# Asset management
@docs assets, assetItem, image

-}

import Html exposing (node, Html, Attribute)


{-| The box primitive, formerly called <a-cube>,
    creates shapes such as boxes, cubes, or walls.
-}
box : List (Attribute msg) -> List (Html msg) -> Html msg
box =
    node "a-box"


{-| The cone primitive creates a cone shape.
-}
cone : List (Attribute msg) -> List (Html msg) -> Html msg
cone =
    node "a-cone"


{-| The cylinder primitive is an entity that
    prescribes the geometry with its geometric primitive set to cylinder.
    It can be used to create tubes and curved surfaces.
-}
cylinder : List (Attribute msg) -> List (Html msg) -> Html msg
cylinder =
    node "a-cylinder"


{-| The light primitive adjusts the lighting setup of the scene.
-}
light : List (Attribute msg) -> List (Html msg) -> Html msg
light =
    node "a-light"


{-| The plane primitive creates flat surfaces.
-}
plane : List (Attribute msg) -> List (Html msg) -> Html msg
plane =
    node "a-plane"


{-| The sky primitive adds a background to a scene
    or display a 360-degree photo.
    It is an entity that prescribes a large sphere with the material
    mapped to the inside.
-}
sky : List (Attribute msg) -> List (Html msg) -> Html msg
sky =
    node "a-sky"


{-| The sphere primitive creates a spherical or polyhedron shapes.
-}
sphere : List (Attribute msg) -> List (Html msg) -> Html msg
sphere =
    node "a-sphere"


{-| The ring primitive creates a ring or disc shape.
-}
ring : List (Attribute msg) -> List (Html msg) -> Html msg
ring =
    node "a-ring"


{-| The torus primitive creates a donut or circular tube shape.
-}
torus : List (Attribute msg) -> List (Html msg) -> Html msg
torus =
    node "a-torus"


{-| The assets group is used to store assets that are pre-loaded
-}
assets : List (Attribute msg) -> List (Html msg) -> Html msg
assets =
    node "a-assets"


{-| An individual asset item. Asset items load an asset up front
and can be referenced as a source later on. Use a src attribute
to define what to load and specify an id which is used later on
to use this asset as a source.
-}
assetItem : List (Attribute msg) -> List (Html msg) -> Html msg
assetItem =
    node "a-asset-item"


{-| The image primitive shows an image on a flat plane.
-}
image : List (Attribute msg) -> List (Html msg) -> Html msg
image =
    node "a-image"
