module Main exposing (..)

import Html exposing (Html)
import Color exposing (rgb, Color)
import AFrame exposing (scene, entity)
import AFrame.Animations
    exposing
        ( animation
        , easing
        , attribute'
        , dur
        , fill
        , to
        , repeat
        )
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
        [ entity []
            [ animation
                [ attribute' "rotation"
                , dur 10000
                , easing "linear"
                , fill "forwards"
                , to "0 360 0"
                , repeat 10000
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 1) 1 1
                , color blue
                , rotation -90 0 0
                , position 0 0 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius ((sqrt 2) / 2)) 1 ((sqrt 2) / 2)
                , color blue
                , rotation -135 -90 90
                , position 1 2 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 1) 1 1
                , color grey
                , rotation 0 90 90
                , position -1 1 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 0.5) 1 0.5
                , color orange
                , rotation 0 -90 90
                , position 1.25 0.25 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 3
                , scale (heightFromPrismRadius 0.5) 1 0.5
                , color orange
                , rotation 90 -90 90
                , position 0 1.5 0
                ]
                []
            , cylinder
                [ radius 1
                , segmentsRadial 4
                , scale 0.75 1 0.75
                , color green
                , rotation 90 -90 90
                , position 0.75 1 0
                ]
                []
            , entity
                []
                [ cylinder
                    [ radius 1
                    , segmentsRadial 3
                    , scale (heightFromPrismRadius 0.5) 1 0.5
                    , color green
                    , rotation -90 90 90
                    , position 0 2 0
                    ]
                    []
                , cylinder
                    [ radius 1
                    , segmentsRadial 3
                    , scale (heightFromPrismRadius 0.5) 1 0.5
                    , color green
                    , rotation 90 -90 90
                    , position -0.75 2.25 0
                    ]
                    []
                ]
            ]
        ]
