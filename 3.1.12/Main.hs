import Data.List

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 as bs cs = map sum $ transpose [as, bs, cs]
