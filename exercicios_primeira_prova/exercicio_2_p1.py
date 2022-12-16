"""
1.	Faça um programa que peça dois números inteiros. Imprima a soma, multiplicação, divisão,
subtração, exiba o resto da divisão, exiba a parte inteira da divisão desses dois números na tela.
"""
p_num = int(input("Primerio Número: "))
s_num = int(input("Segundo Número: "))

#OPERAÇÕES
soma = p_num + s_num
multiplicacao = p_num * s_num
divisao = p_num / s_num
subtracao = p_num - s_num
parte_int = p_num // s_num
resto_div = p_num % s_num

print(f"Soma: {soma}\n Multiplicação: {multiplicacao}\n Divisao: {divisao}\n"
      f"Subtração: {subtracao}\n Parte Inteira: {parte_int}\n Resto da Divisão: {resto_div}")

#print("Divisão: {}", format(divisao, '2'))