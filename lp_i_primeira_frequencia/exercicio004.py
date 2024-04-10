par = 0
impar = 0
soma = 0

for i in range(21):
    soma +=i
    if i%2==0:
        par+=1
    else:
        impar+=1
"""i=0
while i<21:
    soma +=i
    if i%2==0:
        par+=1
    else:
        impar+=1
    i+=1"""

print(f"Soma: {soma} Qtd Par: {par} Qtd Impar: {impar}")