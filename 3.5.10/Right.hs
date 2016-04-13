evenOnly :: [a] -> [a]
evenOnly = fst . foldr (\x ~(xs, ys) -> (ys, x:xs)) ([], [])
