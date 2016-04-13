import Data.Char

data Error = ParsingError | IncompleteDataError | IncorrectDataError String

data Person = Person { firstName :: String, lastName :: String, age :: Int }

filterPairs :: [[String]] -> [(String, String)]
filterPairs = map convert . filter predicate where
  predicate ["firstName", "=", _] = True
  predicate ["lastName", "=", _]  = True
  predicate ["age", "=", _]       = True
  predicate _                     = False
  convert   [k, "=", v]           = (k,v)

validateLength :: [a] -> Bool
validateLength = (>= 3) . length

validatePairs :: [[String]] -> Bool
validatePairs  = all validPair where
  validPair [k,"=",v] = True
  validPair _         = False

validateCompletition :: [(String, String)] -> Bool
validateCompletition pairs = all predicate ["firstName", "lastName", "age"] where
  predicate = (`elem` keys)
  keys      = map fst pairs

validateAge :: String -> Bool
validateAge age = all isDigit age

parsePairs :: [(String, String)] -> Either Error Person
parsePairs = foldr helper (Right Person{}) where
  helper _                e@(Left _) = e
  helper ("firstName", v) (Right p)  = Right (p { firstName = v })
  helper ("lastName",  v) (Right p)  = Right (p { lastName  = v })
  helper ("age",       v) (Right p)  = if validateAge v then Right (p { age = (read v) })
                                       else Left (IncorrectDataError v)

parsePerson :: String -> Either Error Person
parsePerson source = if not isValidPairs then Left ParsingError
                     else if not isValidLength then Left ParsingError
                          else if not isValidCompletition then Left IncompleteDataError
                               else parsePairs filteredPairs
  where
    pairs               = map words $ lines source
    filteredPairs       = filterPairs pairs
    isValidPairs        = validatePairs pairs
    isValidLength       = validateLength filteredPairs
    isValidCompletition = validateCompletition filteredPairs
