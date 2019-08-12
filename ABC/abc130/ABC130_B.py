N,X = map(int, input().split())
L = list(map(int, input().split()))

bounds = 1
prev = 0
for i in range(1,N+1):
    bi = prev + L[i-1]
    prev = bi
    if bi > X:
        break
    else:
        bounds += 1

print(bounds)
