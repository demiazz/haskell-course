revRange :: (Char,Char) -> [Char]
revRange = unfoldr g where
  g (from, to) | to < from = Nothing
               | otherwise = Just (to, (from, pred to))
