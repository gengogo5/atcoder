# 特別数
def f(a,b)
  a*a*a + a*a*b + a*b*b + b*b*b
end
N = gets.to_i

# 尺取法
j = 1000000
min_v = Float::INFINITY
cnt = 0
1000001.times do |i|
  while(f(i,j) >= N && j >= 0)
    min_v = [f(i,j),min_v].min
    j -= 1
  end
end

puts min_v

# N以上の最小の特別数を求める(二分探索) ※TLEする
#def solve(a)
#  low = -1
#  high = 10 ** 6
#  while (high - low > 1) # highとlowが隣り合わせになるまで
#    b = (high + low) / 2 # 暫定値を出す
#    if f(a,b) >= N # N以上の特別数である場合(範囲内(もっと小さいものを探したい))
#      high = b
#    else # N以上でない(範囲外(もっと大きいものを探したい))
#      low = b
#    end
#  end
#  f(a,high) # 範囲内の最小のbがhighに入っている
#end
#min_v = Float::INFINITY
#1000001.times do |i|
#  v = solve(i)
#  min_v = v if v < min_v
#end