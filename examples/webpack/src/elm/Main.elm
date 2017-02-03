module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Geom exposing (..)
import AFrame.Primitives.Cursor exposing (..)
import AFrame.Primitives.Camera exposing (..)
import AFrame exposing (scene)
import AFrame.Primitives.Attributes exposing (position)


type alias Model =
    { active : String }


type Msg
    = Click String


init : ( Model, Cmd Msg )
init =
    ( Model "", Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Click string ->
            ( { model | active = string }, Cmd.none )


view : Model -> Html Msg
view model =
    scene []
        [ camera [ position 0 0 5 ]
            [ cursor [ fuse True ]
                [ cursorbox
                ]
            ]
        , logo Click model
        ]
