fibonacci :: Integer -> Integer
fibonacci (-1) = 1
fibonacci    0 = 0
fibonacci    1 = 1
fibonacci    to = helper (0, 1) from to where
  from = if   to > 0 then   2 else (-2)
  op   = if from > 0 then (+) else  (-)

  helper prev from to | from == to = curr
                      | otherwise  = helper next (from `op` 1) to
    where
      curr = fst prev `op` snd prev
      next = (snd prev, curr)
                      
