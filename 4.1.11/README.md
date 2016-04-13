## Типы данных - Типы перечислений

### Задание

Тип `LogLevel` описывает различные уровни логирования.

```
data LogLevel = Error | Warning | Info
```

Определите функцию `cmp`, сравнивающую элементы типа `LogLevel` так, чтобы было верно, что `Error` > `Warning` > `Info`.

```
GHCi> cmp Error Warning
GT
GHCI> cmp Info Warning
LT
```

### Исходный код

```
cmp :: LogLevel -> LogLevel -> Ordering
cmp = undefined
```
