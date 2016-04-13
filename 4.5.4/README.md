## Типы данных - Рекурсивные типы данных

### Задание

Рассмотрим еще один пример рекурсивного типа данных:

```
data Nat = Zero | Suc Nat
```

Элементы этого типа имеют следующий вид: `Zero`, `Suc Zero`, `Suc (Suc Zero)`, `Suc (Suc (Suc Zero))`, и так далее. Таким образом мы можем считать, что элементы этого типа - это натуральные числа в унарной системе счисления.

Мы можем написать функцию, которая преобразует `Nat` в `Integer` следующим образом:

```
fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1
```

Реализуйте функции сложения и умножения этих чисел, а также функцию, вычисляющую факториал.

### Исходный код

```
data Nat = Zero | Suc Nat

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

add :: Nat -> Nat -> Nat
add = undefined

mul :: Nat -> Nat -> Nat
mul = undefined

fac :: Nat -> Nat
fac = undefined
```
