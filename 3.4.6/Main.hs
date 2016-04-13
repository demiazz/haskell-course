sumOdd :: [Integer] -> Integer
sumOdd = foldr accumulate 0 where
  accumulate x s | odd x     = s + x
                 | otherwise = s
