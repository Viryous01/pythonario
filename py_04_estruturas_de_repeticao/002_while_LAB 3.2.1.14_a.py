#LAB 3.2.1.14

blocks = int(input("Enter the number of blocks: "))

height = 0
blocks_used = 0
step = 1

while blocks_used < blocks:
    blocks_used += step
    if blocks_used > blocks:
        break
    else:
        height += 1
        step += 1

print("The height of the pyramid:", height)
