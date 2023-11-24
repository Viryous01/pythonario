

escolha = int(input("1 - Soma\n2 - Subtracção \nEscolha uma operação: "))
x,y=9,8

match escolha:
    case 1:
        print("Soma: ", x+y)
    case 2:
        print("Subtracção: ", x-y)
    case _:
        print("Operação Inválida")
