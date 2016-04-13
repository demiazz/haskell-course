## Списки - Правая свертка

### Задание

Используя функцию `foldr`, напишите реализацию функции `lengthList`, вычисляющей количество элементов в списке.

```
GHCi> lengthList [7,6,5]
3
```

### Исходный код

```
lengthList :: [a] -> Int
lengthList = foldr undefined undefined
```
