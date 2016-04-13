integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = step * (halfSum + sum 0 a) where
  steps   = 30000
  step    = (b - a) / steps
  halfSum = (f a + f b) / 2
  start   = if a < b then (== a) else (== b)
  stop    = if a < b then (>= b) else (<= b)
  sum acc curr
    | stop curr  = acc
    | start curr = sum acc (curr + step)
    | otherwise  = sum (acc + f curr) (curr + step)
