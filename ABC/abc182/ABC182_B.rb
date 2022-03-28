N = gets.to_i
A = gets.split.map(&:to_i)

mxgcdd = 0
mxk = 0
(2..A.max).each do |i|
  gcdd = 0
  N.times do |j|
    gcdd += 1 if A[j] % i == 0
  end
  if gcdd > mxgcdd
    mxk = i
    mxgcdd = gcdd
  end
end

puts mxk