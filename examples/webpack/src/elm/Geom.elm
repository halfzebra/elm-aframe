module Geom exposing (..)

import MyColor exposing (..)
import Html exposing (..)
import Math.Vector3 exposing (vec3)
import AFrame.Animations
    exposing
        ( animation
        , easing
        , attribute_
        , dur
        , fill
        , to
        , repeat
        , Fill(..)
        , Repeat(..)
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
    box [ position (vec3 0 0 2) ] []


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
            , fill Forwards
            , to (vec3 0 360 0)
            , repeat (Times 10000)
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 1) 1 1)
            , switchon "bottom-blue" model.active (color blue)
            , rotation (vec3 -90 0 0)
            , position (vec3 0 0 0)
            , onClick (msg "bottom-blue")
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius ((sqrt 2) / 2)) 1 ((sqrt 2) / 2))
            , color blue
            , rotation (vec3 -135 -90 90)
            , position (vec3 1 2 0)
            , onClick (msg "top-blue")
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 1) 1 1)
            , color grey
            , rotation (vec3 0 90 90)
            , position (vec3 -1 1 0)
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
            , color orange
            , rotation (vec3 0 -90 90)
            , position (vec3 1.25 0.25 0)
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 3
            , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
            , color orange
            , rotation (vec3 90 -90 90)
            , position (vec3 0 1.5 0)
            ]
            []
        , cylinder
            [ radius 1
            , segmentsRadial 4
            , scale (vec3 0.75 1 0.75)
            , color green
            , rotation (vec3 90 -90 90)
            , position (vec3 0.75 1 0)
            ]
            []
        , entity
            []
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
                [ radius 1
                , segmentsRadial 3
                , scale (vec3 (heightFromPrismRadius 0.5) 1 0.5)
                , color green
                , rotation (vec3 90 -90 90)
                , position (vec3 -0.75 2.25 0)
                ]
                []
            ]
        ]
