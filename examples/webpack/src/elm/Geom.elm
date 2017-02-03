module Geom exposing (..)

import MyColor exposing (..)
import Html exposing (..)
import AFrame.Animations
    exposing
        ( animation
        , easing
        , attribute_
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
import AFrame exposing (scene, entity)
import Html.Events exposing (onClick)


{-| Calculate scale factor for x axis of a triangular prism,
to get a prism with a proper shape.

    heightFromPrismRadius 2
-}
heightFromPrismRadius : Float -> Float
heightFromPrismRadius radius =
    radius / ((sqrt 3) / 3)


cursorbox =
    box [ position 0 0 2 ] []


switchon : String -> String -> Html.Attribute msg -> Html.Attribute msg
switchon compare model orgcolor =
    let
        acolor =
            if compare == model then
                (color red)
            else
                orgcolor

        _ =
            Debug.log "Color" acolor
    in
        acolor


logo msg model =
    entity []
        [ animation
            [ attribute_ "rotation"
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
            , switchon "bottom-blue" model.active (color blue)
            , rotation -90 0 0
            , position 0 0 0
            , onClick (msg "bottom-blue")
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (heightFromPrismRadius ((sqrt 2) / 2)) 1 ((sqrt 2) / 2)
            , color blue
            , rotation -135 -90 90
            , position 1 2 0
            , onClick (msg "top-blue")
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
