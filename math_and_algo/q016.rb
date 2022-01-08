# N個の整数の最大公約数を求める
N = gets.to_i
A = gets.split.map(&:to_i)

# 初回はA[0]とA[0]の最大公約数を計算
ans = A.inject(A[0]) do |a, b|
  while (a >= 1 && b >= 1) do
    if a > b
      a = a % b
    else 
      b = b % a
    end
  end
  [a,b].max
end

puts ans
