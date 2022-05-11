
data Lista a = Vazio | No a (Lista a)
  deriving (Show)

l :: Lista Int
l = No 1 (No 2 (No 3 (No 4 Vazio)))



filterPara :: (a->Bool) -> Lista a -> Lista a
filterPara func l = case l of
                Vazio        -> Vazio
                (No h tail) -> if (func h) then
                                    (No h (filterPara func tail))
                                else
                                    (filterPara func tail)
f2 :: Int -> Bool
f2 x = ((mod x 2) == 1)
m2 = filterPara f2 l


main = do
    print m2

