## Монады - Монада Reader

### Задание

Вспомним пример с базой пользователей и паролей:

```
type User = String
type Password = String
type UsersTable = [(User, Password)]
```

Реализуйте функцию, принимающую в качестве окружения `UsersTable` и возвращающую список пользователей, использующих пароль `"123456"` (в том же порядке, в котором они перечислены в базе).

```
GHCi> runReader usersWithBadPasswords [("user", "123456"), ("x", "hi"), ("root", "123456")]
["user","root"]
```

### Исходный код

```
usersWithBadPasswords :: Reader UsersTable [User]
usersWithBadPasswords = ?
```
