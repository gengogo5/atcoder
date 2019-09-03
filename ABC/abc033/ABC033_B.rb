N = gets.to_i
S,P = N.times.map { gets.chomp.split }.transpose

sum_p = P.inject { |p1,p2| p1.to_i + p2.to_i }

newname = 'atcoder'
N.times do |i|
  if (sum_p/2) + 1 <= P[i].to_i
    newname = S[i]
    break
  end
end
puts newname
