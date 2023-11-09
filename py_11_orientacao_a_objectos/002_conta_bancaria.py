class ContaBancaria:
    def __init__(self, numero, proprietario, saldo):
        self.numero = numero
        self.proprietario = proprietario
        self.saldo = saldo
    def consultarsaldo(self):
        print("Saldo: ", self.saldo,"\n Número: ", self.numero, "\n Proprietário: ", self.proprietario)

objecto1 = ContaBancaria(1501, "Antunes Viti", 50000)
#print("Nome: ",objecto1.proprietario, "Número: ", objecto1.numero, "Saldo: ", objecto1.saldo)
objecto1.consultarsaldo()

class ContaBanco():
    numero:int
    proprietario:str
    saldo:float

    def consultarsaldo(self):
        print("Saldo: ", self.saldo,"\n Número: ", self.numero, "\n Proprietário: ", self.proprietario)

obj = ContaBanco
obj.saldo=9000
obj.proprietario = "Henriqueta Menezes"
obj.numero = 1502
obj.consultarsaldo(obj)