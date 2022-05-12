data Lista a = Vazio | No (Lista a) a
  deriving (Show)

l :: Lista Int
l = No (No(No (No (Vazio)3)2) 1)0 --(No (No 2) (No (No 3) (No (No 4) ( Vazio))))

main=do
    print 