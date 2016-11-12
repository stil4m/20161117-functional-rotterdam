div [ class "my-container"]
    [ h1 [] [ text "Title"]
    , ul [] (List.map listItem items)
    ]

items : List String
items = ["First", "Second","Third"]

listItem : String -> Html
listItem x =
    li [] [ text x]
