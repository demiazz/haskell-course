## Типы данных - Типы с параметрами

### Задание

Исправьте ошибку в коде ниже.

```
eitherToMaybe :: Either a -> Maybe a
eitherToMaybe (Left a) = Just a
eitherToMaybe (Right _) = Nothing
```

### Исходный код

```
eitherToMaybe :: Either a -> Maybe a
eitherToMaybe (Left a) = Just a
eitherToMaybe (Right _) = Nothing
```
