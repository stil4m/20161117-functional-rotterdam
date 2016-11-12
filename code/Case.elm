canDrive : TrafficLight -> Bool
canDrive light =
    case light of
        Green ->
            True
        Yellow ->
            False
        Red ->
            False

canDrive : TrafficLight -> Bool
canDrive light =
    case light of
        Green ->
            True
        _ ->
            False
