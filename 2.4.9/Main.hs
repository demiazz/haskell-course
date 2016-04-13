avg :: Int -> Int -> Int -> Double
avg a b c = sum / 3 where
  sum = fromIntegral $ a + b + c
