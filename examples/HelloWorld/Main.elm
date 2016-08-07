module Main exposing (..)

import Html exposing (Html)
import Color exposing (rgb)
import AFrame exposing (scene, entity)
import AFrame.Primitives exposing (sphere, box, cylinder, plane, sky)
import AFrame.Primitives.Attributes
    exposing
        ( rotation
        , position
        , radius
        , color
        , width
        , height
        , depth
        )


main : Html msg
main =
    scene
        []
        [ sphere
            [ position 0 1.25 -1
            , radius 1.25
            , color (rgb 240 173 0)
            ]
            []
        , box
            [ position -1 0.5 1
            , radius 0.5
            , width 1
            , height 1.5
            , depth 1
            , color (rgb 127 209 59)
            ]
            []
        , cylinder
            [ position 1 0.75 1
            , radius 0.5
            , height 1.5
            , color (rgb 6 181 204)
            ]
            []
        , plane
            [ rotation -90 0 0
            , width 4
            , height 4
            , color (rgb 90 99 120)
            ]
            []
        , sky
            []
            []
        ]
