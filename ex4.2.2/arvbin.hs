data Arvore a = Folha a | Galho (Arvore a) (Arvore a)
  deriving Show

arv1 = Galho (Galho (Folha True) (Folha False)) (Galho (Folha False) Galho (Folha True) (Folha True) )
arv2 = Galho (Galho (Galho (Folha 1) (Folha 2)) (Folha 5)) Galho (Folha 9) (Folha 11)
