data Color = Red | Green | Blue

stringToColor :: String -> Color
stringToColor "Red"   = Red
stringToColor "Blue"  = Blue
stringToColor "Green" = Green
stringToColor _       = undefined
