r,D,x2k = map(int, input().split())

xi = x2k
for i in range(10):
    xip1 = r * xi - D
    xi = xip1
    print(xi)

