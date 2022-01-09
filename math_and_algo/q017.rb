# N個の整数の最小公倍数を求める
# Integer#gcdやInteger#lcmを使えばいいが勉強のために
N = gets.to_i
A = gets.split.map(&:to_i)

# AとBの最大公約数
def calc_gcd(a, b)
  while (a >= 1 && b >= 1) do
    if a > b
      a = a % b
    else 
      b = b % a
    end
  end
  [a,b].max
end

# AとBの最小公倍数
def calc_lcm(a, b)
  a * b / calc_gcd(a, b)
end

# 初回はA[0]とA[0]の最小公倍数を計算
ans = A.inject(A[0]) do |a, b|
  calc_lcm(a, b)
end

puts ans
