"""
3.	Faça um programa que solicite 3 notas para o usuário,
calcule a média e indique se o aluno foi aprovado ou reprovado
(nota precisar ser maior ou igual à 9.5 para o aluno ser aprovado).
"""
#Introdução das notas

p_nota = float(input("Introduz a primeira nota: "))
s_nota = float(input("Introduz a segunda nota: "))
t_nota = float(input("Introduz a terceira nota: "))

media = (p_nota+s_nota+t_nota)/3 #Calculo da média

if media >= 9.5:
    print(f"O Aluno está Aprovado!\n Média: {media}") #Informa a situação do aluno e apresenta também a média
else:
    print(f"O Aluno está Reprovado \n Média: {media}")

