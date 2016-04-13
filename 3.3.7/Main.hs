data Odd = Odd Integer deriving (Eq, Show)

instance Enum Odd where
  succ (Odd n) = Odd $ n + 2

  pred (Odd n) = Odd $ n - 2

  fromEnum (Odd n) = fromIntegral n

  toEnum n = Odd $ toInteger n

  enumFrom n = n : (enumFrom $ succ n)

  enumFromThen x@(Odd n) y@(Odd m) = x : enumFromThen y (Odd (m + m - n))

  enumFromTo n (Odd m) = takeWhile stop $ enumFrom n where
    stop (Odd x) = x <= m

  enumFromThenTo x@(Odd n) y@(Odd m) z@(Odd k)
    | n > k && m - n > 0 = []
    | n < k && m - n < 0 = []
    | otherwise          = takeWhile stop $ enumFromThen x y where
      stop = if n > m then (\(Odd c) -> c >= k) else (\(Odd c) -> c <= k)
