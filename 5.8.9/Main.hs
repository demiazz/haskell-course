fibStep :: State (Integer, Integer) ()
fibStep = State $ \(prev, next) -> ((), (next, prev + next))

execStateN :: Int -> State s a -> s -> s
execStateN n m = execState $ replicateM n m
