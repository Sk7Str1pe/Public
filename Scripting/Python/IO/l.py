n = int(input())

h = n // 3600 % 24
m = n % 3600 // 60
s = n % 60

print(f'{h}:{m:02}:{s:02}')
