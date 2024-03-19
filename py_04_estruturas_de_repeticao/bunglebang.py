soma = 0
n = 0

while n<=1000:
    if n%3==0 and n%5==0:
        print("BungleBang")
    elif n%3==0:
        print("Bungle")
    elif n%5==0:
        print("Bang")
    else:
        print(n)
    soma = soma + n
    n = n + 1
print(f"Soma: ",soma)