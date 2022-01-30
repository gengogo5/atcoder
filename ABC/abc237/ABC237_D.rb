N = gets.to_i
S = gets.chomp

A = (0..N).to_a
ar = []
al = []

(N+1).times do |i|
  if S[i] == 'L'
    ar.unshift(A[i])
  else
    al << A[i]
  end
end

puts (al + ar).join(" ")