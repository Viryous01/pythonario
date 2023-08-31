"""
Consideremos a seguinte instru¸c˜ao if, a qual para um valor quantitativo
de uma nota escreve o seu valor qualitativo equivalente, sendo que uma nota entre zero e 4 corresponde a mau,
uma nota entre 5 e 9 corresponde a medíocre, uma nota entre 10 e 13 corresponde a suficiente,
uma nota entre 14 e 17 corresponde a bom e uma nota superior a 17 corresponde a muito bom
"""

nota = float(input("Informe uma nota: "))

if nota <=4:
    print("Mau")
elif nota <= 9:
    print("Medíocre")
elif nota <= 13:
    print("Suficiente")
elif nota <= 17:
    print("Bom")
else:
    print("Muito Bom")