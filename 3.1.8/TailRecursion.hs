import Data.List

oddsOnly :: Integral a => [a] -> [a]
oddsOnly [] = []
oddsOnly xs = reverse $ helper [] xs where
  helper acc []     = acc
  helper acc (x:xs) | odd(x)    = helper (x:acc) xs
                    | otherwise = helper acc xs
