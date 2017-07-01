module Main exposing (..)

import Html exposing (Html)
import Color exposing (rgb, Color)
import Math.Vector3 exposing (vec3)
import AFrame exposing (scene, entity)
import AFrame.Primitives exposing (box, cylinder)
import AFrame.Primitives.Attributes
    exposing
        ( rotation
        , color
        , scale
        , radius
        , position
        , segmentsRadial
        )
import AFrame.Extra.Physics exposing (grid, dynamicBody, staticBody)


{-| Calculate scale factor for x axis of a triangular prism,
to get a prism with a proper shape.

    heightFromPrismRadius 2
-}
heightFromPrismRadius : Float -> Float
heightFromPrismRadius radius =
    radius / ((sqrt 3) / 3)


orange : Color
orange =
    rgb 240 173 0


grey : Color
grey =
    rgb 90 99 120


green : Color
green =
    rgb 127 209 59


blue : Color
blue =
    rgb 6 181 204


main : Html msg
main =
    scene
        []
        [ grid
            [ staticBody
            , position (vec3 0 -2 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 1) 1 1)
            , color blue
            , rotation (vec3 -90 0 0)
            , position (vec3 0 0 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius ((sqrt 2) / 2)) 1 ((sqrt 2) / 2))
            , color blue
            , rotation (vec3 -135 -90 90)
            , position (vec3 1 2 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 1) 1 1)
            , color grey
            , rotation (vec3 0 90 90)
            , position (vec3 -1 1 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
            , color orange
            , rotation (vec3 0 -90 90)
            , position (vec3 1.25 0.25 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
            , color orange
            , rotation (vec3 90 -90 90)
            , position (vec3 0 1.5 0)
            ]
            []
        , cylinder
            [ dynamicBody
            , radius 1
            , segmentsRadial 4
            , scale (vec3 0.75 1 0.75)
            , color green
            , rotation (vec3 90 -90 90)
            , position (vec3 0.75 1 0)
            ]
            []
        , entity
            [ dynamicBody
            ]
            [ cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
                , color green
                , rotation (vec3 -90 90 90)
                , position (vec3 0 2 0)
                ]
                []
            , cylinder
                [ dynamicBody
                , radius 1
                , segmentsRadial 3
                , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
                , color green
                , rotation (vec3 90 -90 90)
                , position (vec3 -0.75 2.25 0)
                ]
                []
            ]
        ]
