writerToState :: Monoid w => Writer w a -> State w a
writerToState m = State $ \st -> (result, st `mappend` log) where
  (result, log) = runWriter m
