## Типы данных - Типы с параметрами

### Задание

Реализуйте функции `distance`, считающую расстояние между двумя точками с вещественными координатами, и `manhDistance`, считающую манхэттенское расстояние между двумя точками с целочисленными координатами.

### Исходный код

```
data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance = undefined

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance = undefined
```
