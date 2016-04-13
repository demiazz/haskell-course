## Введение - Локальные связывания и правила отступов

### Задание

Реализуйте функцию, находящую значение определённого интеграла от заданной функции <i>f</i> на заданном интервале <i>[a,b]</i> методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)

```
integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = undefined
```

```
GHCi> integration sin pi 0
-2.0
```

Результат может отличаться от -2.0, но не более чем на 1e-4.

### Исходный код

```
integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = undefined
```
