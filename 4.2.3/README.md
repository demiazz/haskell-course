## Типы данных - Типы произведений и суммы произведений

### Задание

Реализуйте функцию `distance`, возвращающую расстояние между двумя точками.

### Исходный код

```
data Point = Point Double Double

origin :: Point
origin = Point 0.0 0.0

distanceToOrigin :: Point -> Double
distanceToOrigin (Point x y) = sqrt (x ^ 2 + y ^ 2)

distance :: Point -> Point -> Double
distance = undefined
```
