#LAB 3.2.1.14

blocks = int(input("Enter the number of blocks: "))

height = 0
step = 1

while blocks > height:
    height += 1
    blocks -= height

print("The height of the pyramid:", height)
