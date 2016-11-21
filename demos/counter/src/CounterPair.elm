module CounterPair exposing (..)

import Counter
import Html exposing (div)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }


type alias Model =
    { top : Counter.Model
    , bottom : Counter.Model
    }


type Msg
    = TopMsg Counter.Msg
    | BottomMsg Counter.Msg


model : Model
model =
    { top = Counter.model 0
    , bottom = Counter.model 42
    }


update : Msg -> Model -> Model
update msg { top, bottom } =
    case msg of
        TopMsg x ->
            { top = Counter.update x top
            , bottom = bottom
            }

        BottomMsg y ->
            { model | bottom = Counter.update y model.bottom }


view model =
    div []
        [ Counter.view model.top |> Html.map TopMsg
        , Counter.view model.bottom |> Html.map BottomMsg
        ]
