import Data.Char

delAllUpper :: String -> String
delAllUpper = unwords . filter isNotUpperWord . words where
    isNotUpperWord = not . all isUpper
