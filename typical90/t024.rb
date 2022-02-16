N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

# 各要素ごとの差を合計する
diff = N.times.map { |i| (A[i] - B[i]).abs }.sum

if diff <= K && diff.even? == K.even?
  puts 'Yes'
else
  puts 'No'
end