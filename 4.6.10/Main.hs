import Prelude hiding (lookup)
import qualified Data.List as L

class MapLike m where
  empty :: m k v
  lookup :: Ord k => k -> m k v -> Maybe v
  insert :: Ord k => k -> v -> m k v -> m k v
  delete :: Ord k => k -> m k v -> m k v
  fromList :: Ord k => [(k,v)] -> m k v
  fromList [] = empty
  fromList ((k,v):xs) = insert k v (fromList xs)

newtype ListMap k v = ListMap { getListMap :: [(k,v)] }
  deriving (Eq,Show)

instance MapLike ListMap where
  empty = ListMap []

  lookup k (ListMap l) = helper k l where
    helper _ []         = Nothing
    helper l ((k,v):xs) | l == k    = Just v
                        | otherwise = helper l xs

  insert k v l@(ListMap m) = ListMap $ (k,v) : getListMap (delete k l)

  delete k (ListMap xs) = ListMap $ helper k xs [] where
    helper _ [] acc           = acc
    helper d (e@(k,v):xs) acc | d == k    = helper d xs acc
                              | otherwise = helper d xs (e:acc)
