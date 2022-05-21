N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

mo = A.max

taberu = false
B.each do |i|
  taberu = true if A[i-1] == mo
end

puts taberu ? 'Yes' : 'No'
