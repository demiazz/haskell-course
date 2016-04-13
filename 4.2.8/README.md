## Типы данных - Типы произведений и суммы произведений

### Задание

Реализуйте функцию `isSquare`, проверяющую является ли фигура квадратом.

### Исходный код

```
data Shape = Circle Double | Rectangle Double Double

square :: Double -> Shape
square a = Rectangle a a

isSquare :: Shape -> Bool
isSquare = undefined
```
