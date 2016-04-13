data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord x1 y1) (Coord x2 y2) = sqrt $ x + y where
  x = (x2 - x1) ^ 2
  y = (y2 - y1) ^ 2

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord p1 p2) (Coord q1 q2) = x + y where
  x = abs $ p1 - q1
  y = abs $ p2 - q2
