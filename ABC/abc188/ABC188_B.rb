N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

naiseki = N.times.map do |i|
  A[i] * B[i]
end.sum

puts naiseki.zero? ? 'Yes' : 'No'
