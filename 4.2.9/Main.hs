import Data.List

data Bit = Zero | One
data Sign = Minus | Plus
data Z = Z Sign [Bit]

bitsToNum bits = sum $ zipWith bitToDec bits [0..] where
  bitToDec Zero _     = 0
  bitToDec _    power = 2 ^ power

zToNum (Z sign bits) = let number = bitsToNum bits in
  case sign of
    Plus  -> number
    Minus -> (-1) * number

numToBits num = unfoldr numToBit num where
  numToBit num | num == 0  = Nothing
               | otherwise = Just (bit num, next num)
  bit  num = if num `mod` 2 == 0 then Zero else One
  next num = num `div` 2

numToZ num = Z sign bits where
  sign = if num < 0 then Minus else Plus
  bits = numToBits $ abs num

add :: Z -> Z -> Z
add a b = numToZ $ (zToNum a) + (zToNum b)

mul :: Z -> Z -> Z
mul a b = numToZ $ (zToNum a) * (zToNum b)
