infixl 6 :+:
infixl 7 :*:

data Expr = Val Int | Expr :+: Expr | Expr :*: Expr
  deriving (Show, Eq)

expand :: Expr -> Expr
expand expr = if expr == next then expr else expand $ worker next where
  next                     = worker expr
  worker ((a :+: b) :*: c) = worker a :*: worker c :+: worker b :*: worker c
  worker (c :*: (a :+: b)) = worker c :*: worker a :+: worker c :*: worker b
  worker (a :+: b)         = worker a :+: worker b
  worker (a :*: b)         = worker a :*: worker b
  worker e                 = e
