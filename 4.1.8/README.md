## Типы данных - Типы перечислений

### Задание

Определите (частичную) функцию `stringToColor`, которая по строковому представлению цвета как в прошлой задаче возвращает исходный цвет.

```
GHCi> stringToColor "Red"
Red
```

### Исходный код

```
data Color = Red | Green | Blue

stringToColor :: String -> Color
stringToColor = undefined
```
