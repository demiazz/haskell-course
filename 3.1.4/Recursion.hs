nTimes :: a -> Int -> [a]
nTimes _ 0     = []
nTimes e times = e : nTimes e (times - 1)
