## Типы данных - Синтаксис записей

### Задание

Определить функцию `abbrFirstName`, которая сокращает имя до первой буквы с точкой, т.е. если имя было `"Ivan"`, то после применения этой функции, оно превратится в `"I."`. Но если имя было короче двух символов, то оно не меняется.

### Исходный код

```
data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName p = undefined
```
