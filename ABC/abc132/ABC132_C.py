N = int(input())
d = list(map(int, input().split()))
cnt = int(N/2)
d.sort()
if d[cnt] == d[cnt-1]:
    print(0)
else:
    print(d[cnt]-d[cnt-1])

