lista1 = [1, 2, 3, 4, 5]
print(lista1)

lista2=lista1
lista1 .append(6)
print(lista2)
print(lista1)

#Usando a funçao copy
lista2 = lista1.copy()
lista1 .append(7)
print(lista2)
print(lista1)