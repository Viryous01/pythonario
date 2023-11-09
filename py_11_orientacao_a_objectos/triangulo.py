class Triangulo:
    def __init__(self, a, b, c):
        self.a = a
        self.b = b
        self.c = c

    def areatriangulo(self, altura, base):
        if self.a + self.b > self.c and self.a + self.c > self.b and self.b + self.c > self.a:
            area = (altura*base)/2
            print("Válido: ", area)
        else:
            print("Inválido")

tri=Triangulo(2,5,4)
tri.areatriangulo(4,3)
