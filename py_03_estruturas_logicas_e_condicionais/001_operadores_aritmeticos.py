"""list = [x*x for x in range(5)]

def fun(lst):
    del lst[lst[2]]
    return lst
print(fun(list))


nums = [1,2,3]
vals = nums
del vals[:]

print(len(nums), len(vals))

lst = [[x for x in range(3)] for y in range(3)]
print(lst)"""

"""
lst = [i for i in range(-1,-2)]

d ={}

d['1'] = (1,2)
d['2'] = (2,1)
for x in d.keys():
    print(d[x][1], end="")"""

"""lst = [1,2,3]
for v in range(len(lst)):
    lst.insert(1, lst[v])

print(lst)"""
def fun(a,b):
    return  b**a
print(fun(2,2))

a =1
b=0
a=a^b
b=a^b
a=a^b
print(a, b)
tup = (1,2,3)

v = 1
while v<10:
    print("#")
    v=v<<1

t = [[3-i for i in range(3)] for j in range(3)]
s = 0
for i in range(3):
    s +=t[i][i]
print(s)