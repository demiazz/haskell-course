seqA :: Integer -> Integer
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA n | n > 0     = helper 1 2 3 3 n
       | otherwise = error "arg must be > 0"
  where
    helper fst snd trd from to | from == to = next
                               | otherwise  = helper snd trd next (from + 1) to
      where next = trd + snd - 2 * fst
