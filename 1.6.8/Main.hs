sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n
  | n < 0     = sum'n'count $ abs n
  | otherwise = (sum 0 n, count n)
  where
    sum acc n
      | n < 10    = acc + n
      | otherwise = sum (acc + n `mod` 10) (n `div` 10)
    count n = toInteger $ length $ show n
