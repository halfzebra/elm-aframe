module AFrame.Extra.ModelLoader exposing (..)

import Html.Attributes exposing (attribute)
import Html exposing (Attribute)


plymodel : String -> Attribute msg
plymodel value =
    attribute "ply-model" value
