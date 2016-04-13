import Data.List

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs
