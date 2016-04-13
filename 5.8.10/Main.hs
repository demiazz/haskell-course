numberTree :: Tree () -> Tree Integer
numberTree tree = evalState (helper tree) 1 where
  helper :: Tree () -> State Integer (Tree Integer)
  helper (Leaf _) = do
    n <- get
    put $ n + 1
    return $ Leaf n
  helper (Fork l _ r) = do
    left <- helper l
    n <- get
    put $ n + 1
    right <- helper r
    return $ Fork left n right
