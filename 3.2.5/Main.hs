qsort :: Ord a => [a] -> [a]
qsort []         = []
qsort [x]        = [x]
qsort lst@(x:xs) = left ++ middle ++ right where
  left   = qsort $ filter (< x) lst
  middle = filter (== x) lst
  right  = qsort $ filter (> x) lst
