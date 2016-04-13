data Entry k1 k2 v = Entry (k1, k2) v    deriving Show
data Map   k1 k2 v = Map [Entry k1 k2 v] deriving Show

instance Functor (Entry k1 k2) where
  fmap f (Entry k v) = Entry k (f v)

instance Functor (Map k1 k2) where
  fmap f (Map a) = Map $ map (fmap f) a
