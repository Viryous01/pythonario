class Pessoa():
    def __init__(self, nome, sexo,idade,endereco):
        self.nome=nome
        self.sexo=sexo
        self.idade=idade
        self.endereco=endereco

    def andar(self):
        print(f"{self.nome} está andando")

    def comer(self):
        print(f"{self.nome} está comendo")

    def beber_agua(self):
        print(f"{self.nome} está bebendo água")

class Funcionario(Pessoa):
    def __init__(self, nome, sexo,idade,endereco, salario, funcao):
        super().__init__(nome, sexo,idade,endereco)
        self.salario = salario
        self.funcao = funcao

    def calcular_salario(self):
        print("Calculando Salário")

class Estudante(Pessoa):
    def __init__(self, nome, sexo,idade,endereco,numero):
        super().__init__(nome, sexo,idade,endereco)
        self.numero = numero

    def estudar(self):
        print("Estudando")
    def fazer_prova(self):
        print("Fazendo Prova")

f = Funcionario("Antunes Viti", "M", 47, "Cacuaco", 584700, "CEO")
e = Estudante("Aldemir Eduardo", "M", 23, "Cacuaco", 2505)
f.beber_agua()
e.beber_agua()