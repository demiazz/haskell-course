## Типы данных - Синонимы и обертки типов

### Задание

Реализуйте `instance Monoid` для `Maybe'` a так, чтобы `mempty` не был равен `Maybe' Nothing`. Нельзя накладывать никаких дополнительных ограничений на тип `a`, кроме указанных в условии.

### Исходный код

```
newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
  deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
  mempty = undefined
  mappend = undefined
```
