max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 = zipWith3 helper where
  helper x y z = max x $ max y z
