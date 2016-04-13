data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName p = p { firstName = abbr } where
  name = firstName p
  abbr = if length name > 2 then [head name, '.'] else name

