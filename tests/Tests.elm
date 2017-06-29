module Tests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)
import Html
import AFrame
import Test.Html.Query as Query
import Test.Html.Selector exposing (text, tag)


suite : Test
suite =
    describe "Scene"
        [ test "AFrame.scene creates a scene" <|
            \() ->
                Html.div []
                    [ AFrame.scene [] [] ]
                    |> Query.fromHtml
                    |> Query.findAll [ tag "a-scene" ]
                    |> Query.count (Expect.equal 1)
        ]
