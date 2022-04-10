text == [char]
line == [char]
word == [char]

just::num->text->text  ||the main function
just n = concat.map(reformat n).paras.map words.lines

||lines::text->[line]
||lines quebra a string em linhas


paras::[[word]]->[[word]]
||separa em paragrafos sem o espaço
paras (a:b:x) = paras ((a++b):x), if a~=[]~=b
              = a:paras (b:x),    otherwise
paras (a:[]) = a:[]
paras [] = []

reformat::num->[word]->text
||reformula o paragrafo
reformat n [] = "\n"  ||the empty paragraph represents a blank line
reformat n x = lay(justify n (partition n x))

||lay::[line]->text
||lay is defined in <stdenv> - it is the inverse of lines

justify::num->[[word]]->[line]||aplicado a um número e uma string, o centro justifica a string em um campo de largura especificada.
justify n para = map(fill_line n)(init para)++[unwords(last para)]

partition::num->[word]->[[word]]
||separa os paragrafo em linha
partition n [] = []
partition n x  = x1 : partition n rest
                 where
                 (x1,rest) = grab [] x
                 grab y (w:x) = grab (w:y) x,    if sum(map(#)y)+#y+#w <= n
                              = (reverse y,w:x), otherwise
                 grab y [] = (reverse y,[])

fill_line :: num->[word]->line
||separa a linha em paragrafos
fill_line n words 
    = (concat.concat) (transpose [words,mkspaces (w-1) (n-sw)])
      where
      w = #words
      sw = sum(map (#) words)

mkspaces :: num->num->[[char]]
||return s spaces broken into n groups
mkspaces n s = map f [1..n],     if n mod 2=0  ||see note
             = map f [n,n-1..1], otherwise
               where
               f i = rep (s div n + delta) ' '
                     where
                     delta = 1, if i<=s mod n
                           = 0, otherwise
|
words :: line->[word]

words = filter (~=[]) . foldr (breakon ' ') [[]]

finded :: [word]->word ||essa será a nossa função para achar um determinado conjunto de letras

finded = take 10 word 

