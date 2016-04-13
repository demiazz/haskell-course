evenOnly :: [a] -> [a]
evenOnly xs = foldr filter [] $ zip xs $ cycle [False, True] where
  filter (x, flag) xs = if flag then (x:xs) else xs
