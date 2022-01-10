N = gets.to_i
A = gets.split.map(&:to_i)

h = Hash.new(0)
N.times { |i| h[A[i]] += 1 }

ans = 0
(1..50000).each do |j|
  if j != 50000
    ans += h[j] * h[100000-j]
  else
    # ここだけnC2になる
    ans += h[50000] * (h[50000]-1) / 2
  end
end

puts ans
