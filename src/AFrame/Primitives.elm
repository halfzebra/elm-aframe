module AFrame.Primitives exposing (..)

{-| A-Frame primitives.

# Geometric primitives
@docs box, circle, colladaModel, cone, cursor, curvedimage, cylinder, dodecahedron, gltfModel, icosahedron, image, link, objModel, octahedron, plane, ring, sky, sound, sphere, tetrahedron, text, torusKnot, torus, triangle, video, videosphere

# Scene primitives
@docs sky

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


{-|
-}
circle : List (Attribute msg) -> List (Html msg) -> Html msg
circle =
    node "a-circle"


{-| -}
colladaModel : List (Attribute msg) -> List (Html msg) -> Html msg
colladaModel =
    node "a-collada-model"


{-| The cone primitive creates a cone shape.
-}
cone : List (Attribute msg) -> List (Html msg) -> Html msg
cone =
    node "a-cone"


{-| -}
cursor : List (Attribute msg) -> List (Html msg) -> Html msg
cursor =
    node "a-cursor"


{-| -}
curvedimage : List (Attribute msg) -> List (Html msg) -> Html msg
curvedimage =
    node "a-curvedimage"


{-| The cylinder primitive is an entity that
    prescribes the geometry with its geometric primitive set to cylinder.
    It can be used to create tubes and curved surfaces.
-}
cylinder : List (Attribute msg) -> List (Html msg) -> Html msg
cylinder =
    node "a-cylinder"


{-| -}
dodecahedron : List (Attribute msg) -> List (Html msg) -> Html msg
dodecahedron =
    node "a-dodecahedron"


{-| -}
gltfModel : List (Attribute msg) -> List (Html msg) -> Html msg
gltfModel =
    node "a-gltf-model"


{-| -}
icosahedron : List (Attribute msg) -> List (Html msg) -> Html msg
icosahedron =
    node "a-icosahedron"


{-| The image primitive shows an image on a flat plane.
-}
image : List (Attribute msg) -> List (Html msg) -> Html msg
image =
    node "a-image"


{-| -}
link : List (Attribute msg) -> List (Html msg) -> Html msg
link =
    node "a-link"


{-| -}
objModel : List (Attribute msg) -> List (Html msg) -> Html msg
objModel =
    node "a-obj-model"


{-| -}
octahedron : List (Attribute msg) -> List (Html msg) -> Html msg
octahedron =
    node "a-octahedron"


{-| The plane primitive creates flat surfaces.
-}
plane : List (Attribute msg) -> List (Html msg) -> Html msg
plane =
    node "a-plane"


{-| The ring primitive creates a ring or disc shape.
-}
ring : List (Attribute msg) -> List (Html msg) -> Html msg
ring =
    node "a-ring"


{-| The sky primitive adds a background to a scene
    or display a 360-degree photo.
    It is an entity that prescribes a large sphere with the material
    mapped to the inside.
-}
sky : List (Attribute msg) -> List (Html msg) -> Html msg
sky =
    node "a-sky"


{-| The sound primitive wraps a sound component
-}
sound : List (Attribute msg) -> List (Html msg) -> Html msg
sound =
    node "a-sound"


{-| The sphere primitive creates a spherical or polyhedron shapes.
-}
sphere : List (Attribute msg) -> List (Html msg) -> Html msg
sphere =
    node "a-sphere"


{-|
-}
tetrahedron : List (Attribute msg) -> List (Html msg) -> Html msg
tetrahedron =
    node "a-tetrahedron"


{-| The text primitive displays a text.
-}
text : List (Attribute msg) -> List (Html msg) -> Html msg
text =
    node "a-text"


{-|
-}
torusKnot : List (Attribute msg) -> List (Html msg) -> Html msg
torusKnot =
    node "a-torus-knot"


{-| The torus primitive creates a donut or circular tube shape.
-}
torus : List (Attribute msg) -> List (Html msg) -> Html msg
torus =
    node "a-torus"


{-| -}
triangle : List (Attribute msg) -> List (Html msg) -> Html msg
triangle =
    node "a-triangle"


{-| The video primitive shows a video on a flat plane.
-}
video : List (Attribute msg) -> List (Html msg) -> Html msg
video =
    node "a-video"


{-| The videosphere primitive shows a video on a sphere.
-}
videosphere : List (Attribute msg) -> List (Html msg) -> Html msg
videosphere =
    node "a-videosphere"


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
