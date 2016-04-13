## Типы данных - Синонимы и обертки типов

### Задание

Реализуйте `instance MapLike` для типа `ArrowMap`, определенного ниже.

### Исходный код

```
import Prelude hiding (lookup)

class MapLike m where
  empty :: m k v
  lookup :: Ord k => k -> m k v -> Maybe v
  insert :: Ord k => k -> v -> m k v -> m k v
  delete :: Ord k => k -> m k v -> m k v
  fromList :: Ord k => [(k,v)] -> m k v

newtype ArrowMap k v = ArrowMap { getArrowMap :: k -> Maybe v }
```
