class Pessoa():
    def __init__(self, nome, bi):
        self.nome=nome
        self._bi=bi
    def imprimir(self):
        print(self._bi)

p = Pessoa("Antunes", "BE031")
print(p._bi)
p.nome = "Viti"
p._bi = "BE09"
print(p.nome)
p.imprimir()