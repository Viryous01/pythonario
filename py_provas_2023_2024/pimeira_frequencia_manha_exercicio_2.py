class Cartao():
    def __init__(self, num_conta, pin, saldo):
        self.num_conta=num_conta
        self.pin=pin
        self.saldo=saldo

    def realisar_consulta(self):
        if self.autenticar():
            print("O saldo actual: ", self.saldo)

    def realizar_saque(self,valor):
        if self.autenticar():
            self.saldo -= valor
            print("Saque de {} efectuado com sucesso".format(valor))

    def realizar_transferencia(self, conta_destino, valor):
        if self.autenticar():
            self.saldo-=valor
            conta_destino.saldo += valor
            print(f"Transferência de {valor} para {conta_destino.num_conta} efectuado com sucesso")
        else:
            print("Falha na autenticação")

    def autenticar(self):
        tentativas = 0
        while tentativas<3:
            pp = int(input("Insira o PIN: "))
            if pp == self.pin:
                print("Autenticado Com Sucesso")
                return True
            else:
                tentativas +=1
                print("Pin inválido, tentantivas: ", tentativas)
                if tentativas == 3:
                    print("Cartão Bloqueado")
                    return False


c = Cartao(1525, 123, 250000)
c1 = Cartao(2515, 456,0)
c.realisar_consulta()
c.realizar_transferencia(c1, 5000)
