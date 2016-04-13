import Control.Monad (liftM, ap)

data Log a = Log [String] a deriving Show

instance Functor Log where
  fmap = liftM

instance Applicative Log where
  pure  = return
  (<*>) = ap

instance Monad Log where
  return = Log []
  (>>=) (Log prev a) f = Log (prev ++ next) b where
    (Log next b) = f a

execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList x fs = foldl (>>=) (return x) fs
