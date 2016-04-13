## Монады - Класс типов Functor и законы для него

### Задание

Определите представителя класса `Functor` для следующего типа данных, представляющего точку в трёхмерном пространстве:

```
data Point3D a = Point3D a a a deriving Show
```

```
GHCi> fmap (+ 1) (Point3D 5 6 7)
Point3D 6 7 8
```

### Исходный код

```
instance Functor Point3D where
  fmap = undefined
```
