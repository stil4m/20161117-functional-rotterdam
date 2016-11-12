-- ? : List Attribute -> List Html -> Html
-- text : String -> Html

div [ class "my-container"]
    [ h1 [] [ text "Title"]
    , ul []
        [ li [] [ text "First"]
        , li [] [ text "Second"]
        , li [] [ text "Third"]
        ]
    ]
