maior = 0
menor = 1000
i=0

while i>=0:
    num = int(input("Digite um número: "))
    if num>=0:
        if num > maior:
            maior = num
        if num < menor:
            menor = num
    i=num
print(f"O Maior: {maior} Menor: {menor}")