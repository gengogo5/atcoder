N = gets.to_i
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort

score = 0
N.times do |i|
  score += (A[i] - B[i]).abs
end

puts score
