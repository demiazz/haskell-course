data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

instance Functor Tree where
  fmap f (Leaf a)       = Leaf $ fmap f a
  fmap f (Branch a b c) = Branch (fmap f a) (fmap f b) (fmap f c)
