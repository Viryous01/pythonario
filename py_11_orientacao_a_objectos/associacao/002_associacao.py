class Conta():
    def __init__(self, num, saldo, cli):
        self.num=num
        self.__saldo=saldo
        self.cli=cli
    def transferir(self):
        pass
    def consultar(self):
        pass
    def depositar(self):
        pass
    def levantar(self, valor):
        self.__saldo -= valor
        print(f"Levantamento efectuado {valor}\n Saldo Actual: {self.saldo}")

class ContaJovem(Conta):
    def __init__(self, num, saldo, cli):
        super().__init__(num, saldo, cli)

    def levantar(self, valor):
        if valor >=100:
            print("Não pode fazer levantamento desse valor")
        else:
            print("Levantamento efectuado {} Saldo Actual: {}".format(valor, self.__saldo))


class ContaSalario(Conta):
    def __init__(self, num, saldo, cli):
        super().__init__(num, saldo, cli)

class Cliente():
    def __init__(self, nome, idade, sexo):
        self.nome = nome
        self.idade = idade
        self.sexo = sexo

cli1 = Cliente("Antunes", 47, 'M')
cli2 = Cliente("Maria", 24, 'F')
cli3 = Cliente("Cardoso", 17, 'M')
conta1 = Conta(111, 45, cli1)
conta2 = ContaJovem(222, 50, cli3)
conta3 = ContaSalario(333,250000, cli2)

conta1.levantar(10)
conta2.levantar(100)
conta3.levantar(5)
