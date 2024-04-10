nome = input("Nome: ")
altura = float(input("Altura: "))
sexo = input("Sexo: ")

if sexo=='M' or sexo == 'm':
    peso_ideal=72.7*altura - 58
elif sexo=='F' or sexo == 'f':
    peso_ideal = 62.1 * altura - 44.7

print(f"Nome: {nome} | Sexo: {sexo} | Peso Ideal: {peso_ideal:.2f}")