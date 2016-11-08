module AFrame.Extra.Controls exposing (..)

{-| Extensible movement/rotation/hotkey controls,
    with support for a variety of input devices.

# Controls
@docs universalControls, mouseControls

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


{-| Manager for other controls, which can be used to decide
    which input device is used when multiple are available,
    and to set common acceleration/sensitivity across all controls.

    -- Basic
    entity [ camera, universalControls ""] []
-}
universalControls : String -> Attribute msg
universalControls value =
    attribute "universal-controls" value


{-| Mouse + Pointerlock controls. Non-VR / desktop only.

    entity [ camera, mouseControls ] []
-}
mouseControls : Attribute msg
mouseControls =
    attribute "mouse-controls" ""
