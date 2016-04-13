type User       = String
type Password   = String
type UsersTable = [(User, Password)]

usersWithBadPasswords :: Reader UsersTable [User]
usersWithBadPasswords = asks badUsers where
  badUsers []                       = []
  badUsers ((user, "123456"):users) = user : badUsers users
  badUsers (_:users)                = badUsers users
