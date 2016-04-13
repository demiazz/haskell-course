## Типы данных - Синонимы и обертки типов

### Задание

Реализуйте `instance Monoid` для типа `Xor`, в котором `mappend` выполняет операцию `xor`.

### Исходный код

```
newtype Xor = Xor { getXor :: Bool }
  deriving (Eq,Show)

instance Monoid Xor where
  mempty = undefined
  mappend = undefined
```
