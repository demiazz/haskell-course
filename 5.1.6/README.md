## Монады - Класс типов Functor и законы для него

### Задание

Определите представителя класса `Functor` для бинарного дерева, в каждом узле которого хранятся элементы типа `Maybe`:

```
data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show
```

```
GHCi> words <$> Leaf Nothing
Leaf Nothing

GHCi> words <$> Leaf (Just "a b")
Leaf (Just ["a","b"])
```

### Исходный код

```
instance Functor Tree where
  fmap = undefined
```
