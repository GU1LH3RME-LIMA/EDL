import Text.Printf (printf)
import Text.PrettyPrint.Annotated.HughesPJClass (Pretty(pPrintList))

type Aluno = (String,Float ,Float)
--criado um tipo aluno
alunos::[Aluno]
alunos=[("Crzinho",4.0,5.5),("Mbappe",8.7,6.3),("Samidion Ammin",6.9,10),("Arrascaeta",10.0,10.0),("Diego Lopes",5.9,4.0),("Yago",5.4,4.3),("Alex Sena",7,7),("Raquel",7.5,9),("Miguel",2,9),("Alexandre",8,4)]
nome :: Aluno -> String
nome (x,_,_) = x

p1 :: Aluno -> Float 
p1 (_,y,_) = y

p2 :: Aluno -> Float 
p2 (_,_,z) = z

media_aluno :: Aluno -> Float
media_aluno (x, y, z) = ( y + z) / 2
--calcula a média dos alunos

alunos_acima=filter (\alu -> ((media_aluno alu))>=7) alunos

nomes_acima=map nome alunos_acima

   

--  criado os alunos na escola

media_alunos :: [Float]
media_alunos = map media_aluno alunos
--a media dos alunos
main = do
    --print alunos
    --print(map nome alunos) -- mapeado o nome dos alunos
    --print media_alunos -- mostrará as médias
    print nomes_acima
    
    


