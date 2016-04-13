## Типы данных - Синонимы и обертки типов

### Задание

Ниже приведено определение класса `MapLike` типов, похожих на тип `Map`. Определите `instance MapLike` для типа `ListMap`, определенного ниже как список пар ключ-значение. Для каждого ключа должно храниться не больше одного значения. Функция `insert` заменяет старое значение новым, если ключ уже содержался в структуре.

### Исходный код

```
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
```
