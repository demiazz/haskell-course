perms :: [a] -> [[a]]
perms []     = [[]]
perms [x]    = [[x]]
perms (x:xs) = concatMap insertions $ perms xs where
  insertion  xs pos = (take pos xs) ++ [x] ++ (drop pos xs)
  insertions xs     = map (insertion xs) [0..length xs]
