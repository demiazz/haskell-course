import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char

findDigitOrX :: [Char] -> Char
findDigitOrX xs = case findDigit xs of
  Nothing -> 'X'
  Just x  -> x
