N,M = gets.split.map(&:to_i)
A,B = M.times.map { gets.split.map(&:to_i) }.transpose
C,D = M.times.map { gets.split.map(&:to_i) }.transpose

X = Array.new(N+1) { Array.new(N+1,0) }
Y = Array.new(N+1) { Array.new(N+1,0) }

# 高橋くんと青木くんのおもちゃの形をXとYに反映
M.times do |i|
  X[A[i]][B[i]] = 1
  X[B[i]][A[i]] = 1
  Y[C[i]][D[i]] = 1
  Y[D[i]][C[i]] = 1
end

# Pの全探索
eq = false
(1..N).to_a.permutation(N).to_a.each do |pm|
  found = true
  (1..N).each do |i|
    (1..N).each do |j|
      next if i == j
      # 高橋くんのiとjの紐の状態と、青木くんのP[i]とP[j]の紐の状態の一致を見る
      found = false if X[i][j] != Y[pm[i-1]][pm[j-1]]
    end
  end
  eq = true and break if found
end

puts eq ? 'Yes' : 'No'
