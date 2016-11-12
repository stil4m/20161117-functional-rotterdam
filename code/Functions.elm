increment : Int -> Int
increment x =
    x + 1

-- increment 5 == 6

addExclamationMarks : String -> Int -> String
addExclamationMarks input times =
      input ++ String.repeat times "!"

-- addExclamationMarks "hello" 3 == "hello!!!"
