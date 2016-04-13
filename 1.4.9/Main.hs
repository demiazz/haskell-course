import Data.Char

twoDigits2Int :: Char -> Chat -> Int
twoDigits2Int x y = if isDigits then int else 100 where
  isDigits = isDigit x && isDigit y
  int      = digitToInt x * 10 + digitToInt y
