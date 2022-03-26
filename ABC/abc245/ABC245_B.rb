N = gets.to_i
A = gets.split.map(&:to_i)

puts ((0..N).to_a - A).min