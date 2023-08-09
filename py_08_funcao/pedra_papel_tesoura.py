from random import choice

jogador_vitorias = 0
pc_vitorias = 0

def opcao_jogador():

    elemento_do_jogador = input("Escolha Pedra, Papel ou Tesoura: ")
    elemento_do_jogador = elemento_do_jogador.upper()

    if elemento_do_jogador == "PEDRA":
        return elemento_do_jogador

    elif elemento_do_jogador == "PAPEL":
        return elemento_do_jogador

    elif elemento_do_jogador == "TESOURA":
        return elemento_do_jogador

    else:
        print("Opção Inválida")
        opcao_jogador()

def opcao_maquina():

    elementos = ["PEDRA", "PAPEL", "TESOURA"]
    elemento_da_maquina = choice(elementos)
    return elemento_da_maquina

while True:

    print("_"*30)
    elemento_do_jogador = opcao_jogador()
    elemento_da_maquina = opcao_maquina()
    print("_" * 30)

    if elemento_do_jogador == "PEDRA" and elemento_da_maquina == "TESOURA":
        print(f"Jogador Escolheu {elemento_do_jogador} e a Máquina {elemento_da_maquina} \n"
              f"Resultado: Você Ganhou")
        jogador_vitorias += 1

    elif elemento_do_jogador == "PAPEL" and elemento_da_maquina == "PEDRA":
        print(f"Jogador Escolheu {elemento_do_jogador} e a Máquina {elemento_da_maquina} \n"
              f"Resultado: Você Ganhou")
        jogador_vitorias += 1

    elif elemento_do_jogador == "TESOURA" and elemento_da_maquina == "PAPEL":
        print(f"Jogador Escolheu {elemento_do_jogador} e a Máquina {elemento_da_maquina} \n"
              f"Resultado: Você Ganhou")
        jogador_vitorias += 1

    elif elemento_do_jogador == elemento_da_maquina:
        print(f"Jogador Escolheu {elemento_do_jogador} e a Máquina {elemento_da_maquina} \n"
              f"Resultado: Empate")

    else:
        print(f"Jogador Escolheu {elemento_do_jogador} e a Máquina {elemento_da_maquina} \n"
              f"Resultado: A Máquina Ganhou")
        pc_vitorias +=1

    print("_" * 30)
    print("PLACAR")
    print(f"Jogador: {jogador_vitorias}")
    print(f"Máquina: {pc_vitorias}")
    print("_" * 30)

    esc_jogador = input("Você quer jogar novamente? ")
    if esc_jogador in ["SIM", "sim", "Sim", "s", "S"]:
        pass
    elif esc_jogador in ["NAO", "nao", "Nao", "n", "N"]:
        print("Saindo do jogo")
        break
    else:
        print("Saindo do jogo")
        break