type Shopping = Writer [(String, Integer)] ()

purchase :: String -> Integer -> Shopping
purchase item cost = writer ((), [(item, cost)])

total :: Shopping -> Integer
total = sum . map snd . snd . runWriter

items :: Shopping -> [String]
items = map fst . snd . runWriter
