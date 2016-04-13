import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char
findDigit []     = Nothing
findDigit (x:xs) | '0' <= x && x <= '9' = Just x
                 | otherwise            = findDigit xs
