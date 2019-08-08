N = int(input())
lst = []

for i in range(N):
    S,P = input().split()
    P = int(P)
    lst.append([S,P,i+1])

# 点数の降順でソート
lst = sorted(lst, key=lambda x: x[1], reverse=True)

# 市名順ソート
lst = sorted(lst, key=lambda x: x[0])

for _, _, num in lst:
    print(num)
