class Produto:
    def __init__(self, nome, preco, qt_estoque):
        self.nome = nome
        self.preco = preco
        self.qt_estoque = qt_estoque

    def calcular_valor_total(self):
        print("Valor Total: ", self.preco*self.qt_estoque)

    def verificar_produto(self):
        if self.qt_estoque > 0:
            print("O Produto está disponível")
        else:
            print("O produto não está disponível")

p1 = Produto("Arroz", 25000, 50)
p1.calcular_valor_total()

p2 = Produto("Fuba", 20000, 0)
p2.verificar_produto()