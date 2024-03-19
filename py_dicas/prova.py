class Empregado():
    def __init__(self, nome, sal):
        self.nome=nome
        self.__salario = sal

    def getSalario(self):
        return self.__salario

    def toString(self):
        print(f"Nome: {self.nome}, Salário: {self.__salario}")

class Gerente(Empregado):
    def __init__(self, dep, nome, sal):
        super().__init__(nome, sal)
        self.departamento = dep

    def toString(self):
        print(f"Nome: {self.nome}, Salário: {self.getSalario()}")

g = Gerente("TI", "Antunes Viti", 588910)
g.toString()