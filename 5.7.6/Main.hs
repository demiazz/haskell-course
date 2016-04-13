purchase :: String -> Integer -> Shopping
purchase _ cost = writer ((), (Sum cost))

total :: Shopping -> Integer
total = getSum . snd . runWriter
