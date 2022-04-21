
map2 :: (a -> b) -> [a] -> [b]
map2 f [] = []
map2 f (x : xs) = f x : map2 f xs



main = do
    print(map2 (^2) [1,2,3,4,5]) --o produto mais caro da loja