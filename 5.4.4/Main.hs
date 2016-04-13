import Data.Char

data Token = Number Int | Plus | Minus | LeftBrace | RightBrace
  deriving (Eq, Show)

asToken :: String -> Maybe Token
asToken "+" = Just Plus
asToken "-" = Just Minus
asToken "(" = Just LeftBrace
asToken ")" = Just RightBrace
asToken ""  = Nothing
asToken x   = if all isDigit x then Just (Number $ read x) else Nothing

tokenize :: String -> Maybe [Token]
tokenize = foldr helper initial . map asToken . words where
  initial            = return []
  -- NOTE: `helper _ Nothing = Nothing` may be needed for online checking
  helper x (Just xs) = x >>= (\token -> return $ token : xs)

