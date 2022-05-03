data Personagem= Guerreiro String Float Int String Float | Mago String Float Int String Int | Sacerdote String Float Int String String

acare:: Personagem
acare = Sacerdote "Acaré" 1.80 90 "Cura Envenenado" "Reza do Por do sol"


blindao:: Personagem
blindao = Guerreiro "Léo Stronda" 1.67 107 "Supino Reto" 75.5

main = do 
    print "feito"