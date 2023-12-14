class Animal():
    def __init__(self, nome):
        self.nome=nome

    def locomover(self):
        print("Está Locomovendo")

class Cachorro(Animal):
    def __init__(self, nome):
        super().__init__(nome)

    def locomover(self):
        print("Está Locomovendo")
class Peixe(Animal):
    def __init__(self, nome):
        super().__init__(nome)

    def locomover(self):
        print(f"{self.nome} está nadando")

class Pessoa(Animal):
    def __init__(self, nome):
        super().__init__(nome)

    def locomover(self):
        print(f"{self.nome} está a andar")

px = Peixe("Carapau")
ps = Pessoa("Antunes Viti")
px.locomover()
ps.locomover()