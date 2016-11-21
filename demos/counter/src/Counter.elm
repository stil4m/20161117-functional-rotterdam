module Counter exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model 42
        , view = view
        , update = update
        }


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


model : Int -> Model
model x =
    x


bar : String -> Bool
bar s =
    case s of
        "hello" ->
            True


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , p [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
