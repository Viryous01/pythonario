class Carro:
    def __init__(self, marca, matricula, prop):
        self.marca = marca
        self.matricula = matricula
        self.proprietario = prop

class Proprietario:
    def __init__(self, nome, idade, sexo):
        self.nome = nome
        self.idade = idade
        self.sexo = sexo
prop = Proprietario("Antunes Viti", 67, "M")
car = Carro("Toyota", "LD-25-15-HA", prop)

registo = []
registo.append(car)

prop = Proprietario("André Pinzi", 82, "M")
car = Carro("Nissan", "LD-27-15-AA", prop)
registo.append(car)

prop = Proprietario("Mankoka Pedro", 95, "M")
car = Carro("Kia", "LD-28-15-MP", prop)
registo.append(car)

#Listar detalhes do carro e proprietário
for ele in registo:
    print(ele.matricula)
    print(ele.proprietario.nome)
    print("=============================")

#Listar detalhes do Carro
for ele in registo:
    print(ele.matricula)
    print(ele.marca)

#Listar detalhes do proprietário
for ele in registo:
    print(ele.proprietario.nome)
    print(ele.proprietario.idade)
    print(ele.proprietario.sexo)

#Função para buscar um registo
def buscar_carro(valor):
    for i in range(len(registo)):
        if registo[i].matricula==valor:
            print(registo[i].matricula)
            print(registo[i].marca)
            print(registo[i].proprietario.nome)

            break
        else:
            print("Carro Não Encontrado")

buscar_carro("LD-28-15-MP")