N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

AB = A & B

eq = 0
nq = 0
AB.each do |ab|
  if A.find_index(ab) == B.find_index(ab)
    eq += 1
  else
    nq += 1
  end
end
puts eq
puts nq
