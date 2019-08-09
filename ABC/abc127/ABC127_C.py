N,M = map(int, input().split())
L = [0] * M
R = [0] * M
maxL = 1
minR = N

for i in range(M):
    L[i], R[i] = map(int, input().split())
    maxL = max([maxL, L[i]])
    minR = min([minR, R[i]])

ans = minR - maxL + 1
print(max([ans,0]))

