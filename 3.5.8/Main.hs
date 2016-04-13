meanList :: [Double] -> Double
meanList = mean . foldr accumulate (0 :: Double, 0 :: Double) where
  accumulate x (s, l) = (s + x, l + 1)
  mean         (s, l) = s / l
