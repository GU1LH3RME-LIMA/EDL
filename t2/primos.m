primes = sieve[2..50] ||uma lista que recebe uma função de condições para o numero ser primo
sieve (p:x) = p : sieve [n | n <- x; n mod p ~= 0]
test=lay (map show primes)