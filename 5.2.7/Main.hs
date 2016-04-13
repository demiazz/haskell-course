data Log a = Log [String] a

bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log prev a) f = Log (prev ++ next) b where
  (Log next b) = f a
