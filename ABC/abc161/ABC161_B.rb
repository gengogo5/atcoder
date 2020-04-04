N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort!.reverse!

sum = A.inject(:+)
X = sum.to_f/(4*M).to_f

if A[M-1] < X
  puts 'No'
else
  puts 'Yes'
end