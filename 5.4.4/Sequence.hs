import Data.Char
import Control.Monad

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
tokenize = sequence . map asToken . words
