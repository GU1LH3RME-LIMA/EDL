def contrario(plv):#irá inverter a palavra 
    return plv[len(plv)::-1]

def mmap(function,lista):#irá retornar uma lista de mesmo tamanho de acordo com a função solicitada
    
    for i in range(0,len(lista)):
        lista[i]=function(lista[i])
    return lista


lista=["abc","java","arara"]

print(mmap(contrario,lista))#irá inverter a lista
    
