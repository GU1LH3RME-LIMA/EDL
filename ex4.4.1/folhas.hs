data Arvore a = Folha a | Galho (Arvore a) (Arvore a)
  deriving Show


arvore = Galho (Galho (Galho (Folha 1) (Folha 2)) (Folha 5)) (Galho (Folha 9) (Folha 11)) --arvore de inteiros

folhas :: Arvore a -> Int --Conta quantas folha há em uma arvore
folhas (Folha v)   = 1
folhas (Galho l r) = (folhas l) + (folhas r)

main=do 
    print (folhas arvore)--quantas folhas há em arvore
