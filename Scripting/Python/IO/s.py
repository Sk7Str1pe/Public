h = int(input())
a = int(input())
b = int(input())
d = 0

if a >= h:
    d = 1
else:
    d = (h-a-1)//(a-b) + 2

print(d)
