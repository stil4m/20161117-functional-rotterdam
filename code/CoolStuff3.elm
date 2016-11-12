type alias Person = { name : String }

getNames : List Person -> List String
getNames x =
    List.map .name x

getNames2 : List Person -> List String
getNames2 =
    List.map .name
