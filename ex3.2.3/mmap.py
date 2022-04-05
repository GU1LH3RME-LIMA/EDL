def contrario(plv):#irá inverter a palavra 
    plv_rev = plv[len(plv)::-1]
    return plv_rev

def mmap(function,lista):#irá retornar uma lista de mesmo tamanho de acordo com a função solicitada
    
    newlist=[]
    for i in range(0,len(lista)):
        newlist.append(function(lista[i]))
    return newlist


lista=["abc","java","arara"]

print(mmap(contrario,lista))#irá inverter a lista
    
