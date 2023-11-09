class Carro:
    motor:int
    pass

car = Carro
car.motor = 100
idade: int = 10
idade = 12
print(car.motor)

class Pessoa:
    def __init__(self, nome, idade, sexo):
        self.nome = nome
        self.idade = idade
        self.sexo = sexo
    def andar(self):
        pass
        #corpo do método
    def dormir(self):
        print("Eu estou dormindo!")