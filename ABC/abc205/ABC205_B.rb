N = gets.to_i
A = gets.split.map(&:to_i)
L = (1..N).to_a
puts A.sort == L ? 'Yes' : 'No'