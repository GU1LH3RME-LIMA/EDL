
fibs = map fib [0..10]  ||define uma função e uma lista de retorno de n=0 ate n>10 
fib 0 = 0 
fib 1 = 1 || fornece os dados iniciais
fib (n+2) = fibs!(n+1) + fibs!n 
test = layn (map shownum fibs) || layn é uma funçãoque mostra os retornos na tela atrelado ao atributo test
||ao compilar digite a palavra test para funcionar