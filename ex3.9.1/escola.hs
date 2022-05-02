import Text.PrettyPrint.Annotated.HughesPJClass (Pretty(pPrintList))

type Aluno = (String,Float ,Float)
--criado um tipo aluno

nome :: Aluno -> String
nome (x,_,_) = x

p1 :: Aluno -> Float 
p1 (_,y,_) = y

p2 :: Aluno -> Float 
p2 (_,_,z) = z

media_aluno :: Aluno -> Float
media_aluno (x, y, z) = ( y + z) / 2
--calcula a média dos alunos

media_turma :: (Fractional a, Foldable t) => t a -> a
media_turma x =(foldr (+) 0 x )/(foldr (\ _ -> (+1)) 0 x) --função que calcula a média da turma

alunos::[Aluno]
alunos=[("Crzinho",4.0,5.5),("Mbappe",8.7,6.3),("Samidion Ammin",6.9,10),("Arrascaeta",10.0,10.0),("Diego Lopes",5.9,4.0),("Yago",5.4,4.3),("Alex Sena",7,7),("Raquel",7.5,9),("Miguel",2,9),("Alexandre",8,4)]
--  criado os alunos na escola

media_alunos :: [Float]
media_alunos = map media_aluno alunos
--a media dos alunos
main = do
    print media_alunos -- mostrará as médias
    print (media_turma media_alunos) --média da turma
    print (foldr (\ _ -> (+1)) 0 (filter (<7) media_alunos)) --quantidade de alunos reprovados
    print (foldr (\ _ -> (+1)) 0 (filter (>=7) media_alunos)) --quantidade de alunos aprovados
    


