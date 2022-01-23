N,K = gets.split.map(&:to_i)
V = gets.split.map(&:to_i)

ans = 0
# ビット全探索
# 1個以上2K-1個以下の集合を選ぶ
(1...2**K).each do |i|
  cnt = 0
  lcm = 1
  # 1ビットずつ立っているか確認
  K.times do |k|
    if((i & (1 << k)) != 0)
      cnt += 1 # 立っていたビットの数(選んだ集合の数)
      lcm = lcm.lcm(V[k]) # 選んだ集合Pの最小公倍数
    end
  end
  # P1...Pmすべての倍数であるN以下の整数の個数
  # N / P1..Pmの最小公倍数
  num = N / lcm
  ans += num if cnt.odd?
  ans -= num if cnt.even?
end

puts ans