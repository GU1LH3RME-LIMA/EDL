def funcao(x,y):
    return 3*x+4*y
def foldt(function,lista):
    x=0
    for i in range(0,len(lista)):
        x+=function(x,lista[i])
    return x

lista=[1,2,3,4]

print(foldt(funcao,lista))
