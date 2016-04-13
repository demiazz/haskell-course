change :: (Ord a, Num a) => a -> [[a]]
change 0 = [[]]
change n = [c:r | c <- coins, c <= n, r <- change(n - c)]
