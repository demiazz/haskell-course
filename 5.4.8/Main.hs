pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x = do
  c    <- [1..x]
  b    <- [1..c]
  a    <- [1..(b - 1)]
  True <- return $ (a ^ 2) + (b ^ 2) == (c ^ 2)

  return (a, b, c)
  
