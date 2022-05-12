
data Lista a = Vazio | No a (Lista a)
  deriving (Show)

l :: Lista Int
l = No 1 (No 2 (No 3 (No 4 Vazio)))

fold :: (a->b->b) -> b -> Lista a -> b
fold f v l = case l of
                Vazio        -> v
                (No h p) -> (f h (fold f v p))
f3 x y = 3*x + 2*y
v1 = fold f3 0 l



main = do
    print v1

