N,K,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

sum = A.sum

ans = -1
0.upto(K) do |i|
  if (sum + i) >= M * N
    ans = i
    break
  end
end

puts ans 
