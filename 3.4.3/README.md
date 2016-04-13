## Списки - Правая свертка

### Задание

Напишите реализацию функции `concatList` через `foldr`

```
GHCi> concatList [[1,2],[],[3]]
[1,2,3]
```

### Исходный код

```
concatList :: [[a]] -> [a]
concatList = foldr undefined undefined
```
