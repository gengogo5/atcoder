require 'prime'

N = gets.to_i

ans = 0
(1..N).each do |i|
  odd = 1
  # 次数が奇数の素因数の積を求める(これがiになる)
  # i = a * b^2 の aを見つける
  i.prime_division.each do |k,v|
    odd *= k if v.odd?
  end
  # j = a * c^2 の cを全探索
  (1..N).each do |j|
    # a * c^2 はN以下なのでNを超えたら終了
    break if odd * j * j > N
    ans += 1
  end
end

puts ans