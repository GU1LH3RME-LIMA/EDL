data Arvore a =   Galho (Arvore a) a (Arvore a)|Folha
  deriving Show


arvore = Galho (Galho (Galho (Folha ) 1 (Folha ) ) 2 (Folha ) ) 3(Galho (Folha ) 5(Folha )) --arvore de inteiros

folhas :: Arvore a -> Int --Conta quantas folha há em uma arvore
folhas (Folha )   = 1
folhas (Galho l h r) = (folhas l) + (folhas r)



map' :: (a->b) -> (Arvore a) -> (Arvore b)
map' f  l =
  case l of
    Folha  -> Folha
    (Galho e h  d) -> Galho (map' f e) (f h) (map' f d)
m = map' (\x -> (x*2)) arvore


main=do 
    print m--quantas folhas há em arvore
