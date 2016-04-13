nTimes:: a -> Int -> [a]
nTimes _ 0     = []
nTimes e times = helper [] e times where
  helper acc _ 0     = acc
  helper acc e times = helper (e : acc) e (times - 1)
