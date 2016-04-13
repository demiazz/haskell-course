evenOnly :: [a] -> [a]
evenOnly = foldr accumulate [] . pairs where
  pairs (x:y:xs)       = (x,y) : pairs xs
  pairs _              = []
  accumulate (x, y) xs = y:xs
