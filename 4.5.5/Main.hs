data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _)   = 0
height (Node a b) = (+) 1 $ max (height a) (height b)

size :: Tree a -> Int
size (Leaf _)   = 1
size (Node a b) = 1 + (size a) + (size b)
