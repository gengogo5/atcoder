N,K = gets.split.map(&:to_i)
P = N.times.map { gets.split.map(&:to_i) }
S = P.map { |s| s.sum }.sort { |a,b| b <=> a }

# K番目に大きい人の点数
T = S[K-1]

N.times do |i|
  x = P[i].sum + 300
  puts x >= T ? 'Yes' : 'No'
end