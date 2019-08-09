N = int(input())
A = [int(input()) for _ in range(N)]

tmpA = sorted(A)
m1,m2 = tmpA[-1], tmpA[-2]

for a in A:
    if a == m1:
        print(m2)
    else:
        print(m1)

