data Coord a = Coord a a

getCenter :: Double -> Coord Int -> Coord Double
getCenter width (Coord x y) = Coord p q where
  delta = width / 2
  p     = fromIntegral x + delta
  q     = fromIntegral y + delta

getCell :: Double -> Coord Double -> Coord Int
getCell width (Coord x y) = Coord p q where
  delta = width / 2
  p     = truncate $ x - delta
  q     = truncate $ y - delta
