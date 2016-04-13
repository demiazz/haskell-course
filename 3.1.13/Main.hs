groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems xs = reverse $ helper [] xs where
  helper acc []              = acc
  helper [] (x : xs)         = helper [[x]] xs
  helper ((a:as):acc) (x:xs)
    | a == x    = helper ((x:a:as):acc) xs
    | otherwise = helper ([x]:(a:as):acc) xs
