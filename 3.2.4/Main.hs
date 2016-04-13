filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj fst snd = filter predicate where
  predicate x = (fst x) || (snd x)
