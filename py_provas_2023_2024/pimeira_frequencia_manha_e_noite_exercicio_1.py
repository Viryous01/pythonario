class Funcionario():
    def __init__(self, nome,salario, cargo):
        self.nome = nome,
        self.salario = salario
        self.cargo = cargo
    def salario_liquido(self, s_alimentacao, s_saude, s_transporte, irt, inss):
        salario_liquido = (self.salario - self.salario*irt - self.salario*inss +
                           s_alimentacao + s_saude + s_transporte)
        print(f"\nSubsídio de Alimentação: {s_alimentacao} \
        \nSubsídio de Transporte: {s_transporte}"
              f"\nSubsídio Saúde: {s_saude}\
              \nIRT: {self.salario*irt}\n"
              f"INSS: {self.salario*inss}\n"
              f"Salário Líquido: {salario_liquido}")

    def calcular_reforma(self, idade, tempo_de_servico):
        if idade >=65:
            print("O funcionário já pode ser reformado pela idade: ", idade)
        else:
            ano_em_falta=65 - idade
            print(f"Faltam {ano_em_falta} anos de idade para ser reformado")
        if tempo_de_servico >=35:
            print("O funcionário já pode ser reformado pelo tempo de serviço: ", tempo_de_servico)
        else:
            tempo_de_servico = 35 - tempo_de_servico
            print(f"Faltam {tempo_de_servico} anos para ser reformado pelo tempo de serviço: ")

f = Funcionario("Antunes", 250000,"Director Geral")
f.salario_liquido(35000,8900,50000,0.07,0.03)
f.calcular_reforma(45,23)