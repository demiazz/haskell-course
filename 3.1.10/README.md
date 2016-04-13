## Списки - Функции для работы со списками

### Задание

Реализуйте функцию `isPalindrome`, которая определяет, является ли переданный ей список палиндромом.

```
GHCi> isPalindrome "saippuakivikauppias"
True
GHCi> isPalindrome [1]
True
GHCi> isPalindrome [1, 2]
False
```

### Исходный код

```
isPalindrome :: Eq a => [a] -> Bool
isPalindrome = undefined
```
