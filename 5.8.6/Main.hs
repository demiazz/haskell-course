readerToState :: Reader r a -> State r a
readerToState m = State $ \r -> (runReader m r, r)
