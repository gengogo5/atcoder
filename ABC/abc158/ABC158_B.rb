N,A,B = gets.split.map(&:to_i)

# 繰返し数
num = N / (A+B)

# 繰返し分のあまり
amari = N % (A+B)

# 青いボールの個数(最低でもこの個数)
ans = num * A

# 余りが全部Aの場合
if amari <= A
  puts ans + amari
else
  # 余りの一部がAの場合
  puts ans + A
end

