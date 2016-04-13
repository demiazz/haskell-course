-- Тип Board и функция nextPositions заданы, реализовывать их не нужно

nextPositionsN :: Board -> Int -> (Board -> Bool) -> [Board]
nextPositionsN b n pred 
  | n < 0     = []
  | n == 0    = if pred b then [b] else []
  | otherwise = do
      board <- nextPositions b
      nextPositionsN board (n - 1) pred
