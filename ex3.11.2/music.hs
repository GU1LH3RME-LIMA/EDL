import Data.List
bandas :: [[String]]
bandas = [ ["Gilberto Gil"],
           ["Victor","Leo"],
           ["Gonzagao"],
           ["Claudinho","Bochecha"] ]


type Musica = (String, Int, Int)
musicas :: [Musica]
musicas = [ ("Aquele Abraco", 0, 100),
            ("Esperando na Janela", 0, 150),
            ("Borboletas", 1, 120),
            ("Asa Branca", 2, 120),
            ("Assum Preto", 2, 140),
            ("Vem Morena", 2, 200),
            ("Nosso Sonho", 3, 150),
            ("Quero te Encontrar", 3, 100) ]

nomes  = map    (\(nm,_,_) ->  nm)        musicas
autores = map g musicas
g :: Musica -> [String]
g (_,idx,_) = bandas!!idx
duracao= map (\(_,_,dur)-> dur) musicas
--longas = filter (\(_,_,dur) -> dur>=120) musicas
--maior  = foldr f 0 musicas
--bandas_inter = map (intercalate ", ") bandas

juntos= zip3 nomes autores duracao


texto1=map (\(a,b,c)-> "Musica"++ map a juntos ++"/n"++"Banda"++map b juntos++"/n" ++"Duração"++map c juntos++"/n")

--f :: Musica -> Int -> Int
--f (_,_,dur) maior = if dur > maior then dur else maior

texto2= map (intercalate ", ") texto1

main = do  
    --print bandas_inter
    putStr (texto2)