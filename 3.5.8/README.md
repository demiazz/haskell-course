## Списки - Левая свертка и ее сравнение с правой

### Задание

Реализуйте функцию `meanList`, которая находит среднее значение элементов списка, используя однократный вызов функции свертки.

```
GHCi> meanList [1,2,3,4]
2.5
```

Постобработка считается допустимой, то есть предполагаемая реализация функции `meanList` имеет вид

```
meanList = someFun . foldr someFoldingFun someIni
```

### Исходный код

```
meanList :: [Double] -> Double
meanList = undefined
```
