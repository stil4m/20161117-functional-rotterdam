type alias Person =
    { name : String
    , age : Int
    }

mats : Person
mats = { name = "Mats", age = 17}

peter : Person
peter = Person "Peter" 12

-- Will not compile
johnDoe : Person
johnDoe = { name = "John" }
