## Типы данных - Рекурсивные типы данных

### Задание

Тип `List`, определенный ниже, эквивалентен определению списков из стандартной библиотеки в том смысле, что существуют взаимно обратные функции, преобразующие `List a` в `[a]` и обратно. Реализуйте эти функции.

### Исходный код

```
data List a = Nil | Cons a (List a)

fromList :: List a -> [a]
fromList = undefined

toList :: [a] -> List a
toList = undefined
```
