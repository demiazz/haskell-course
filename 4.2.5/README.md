## Типы данных - Типы произведений и суммы произведений

### Задание

Определим тип фигур `Shape`:

```
data Shape = Circle Double | Rectangle Double Double
```

У него два конструктора: `Circle r` - окружность радиуса `r`, и `Rectangle a b` - прямоугольник с размерами сторон `a` и `b`.

Реализуйте функцию `area`, возвращающую площадь фигуры. Константа `pi` уже определена в стандартной библиотеке.

### Исходный код

```
data Shape = Circle Double | Rectangle Double Double

area :: Shape -> Double
area = undefined
```
