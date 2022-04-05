import math
def primo(n):#verá se o numero é primo ou não
    if(n==1):
        return False
    for count in range(2,int(math.sqrt(n))+1):
        if (n % count == 0):
            return False
    return True

def ffilter(function,lista):
    newlist=[]
    for i in range(0,len(lista)):
        if(function(lista[i])): #Se for primo será adicionado a lista
            newlist.append(lista[i])
    return newlist


lista=[1,2,3,4,5]

print(ffilter(primo,lista)) #irá retornar uma lista com numeros primos 
