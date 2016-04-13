data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = Log [msg] . f

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = (wrap g) $ f x where
  wrap f (Log prev v)= case f v of
    (Log next result) -> Log (prev ++ next) result
