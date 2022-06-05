N,K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# 添字をKで割ったあまりごとに別配列へ
b = Array.new(K) { Array.new }
N.times { |i| b[i%K] << a[i] }

# 別配列をソートする
K.times { |i| b[i].sort! }

# ソートした個別配列をもとの形に戻す
sorted = a.size.times.map do |i|
  b[i%K].shift
end

# Aをソートした形と一致していればYes
if sorted == a.sort
  puts 'Yes'
else
  puts 'No'
end