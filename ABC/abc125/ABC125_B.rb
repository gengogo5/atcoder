N = gets.to_i
V = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

v=0
N.times do |i|
  if V[i] > C[i]
    v += V[i]-C[i]
  end
end

puts v
