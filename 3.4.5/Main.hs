lengthList :: [a] -> Int
lengthList = foldr accumulate 0 where
  accumulate _ s = s + 1
