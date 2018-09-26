module Main exposing (..)

import Html exposing (Html, text, div, img)
import Color exposing (rgb)
import AFrame exposing (scene, entity)
import AFrame.Primitives.Camera exposing (camera, wasdControlsEnabled)
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


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    scene
        []
        [ camera [ wasdControlsEnabled False, position 0 0 5 ] []
        , sphere
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



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
