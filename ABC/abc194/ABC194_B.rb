N = gets.to_i
A,B = N.times.map { gets.split.map(&:to_i) }.transpose

# 一人でやる場合最も短い時間
min_t = Float::INFINITY
N.times do |i|
  min_t = [A[i] + B[i], min_t].min
end

min_2t = Float::INFINITY
# 2人でやる場合に最も短い時間
N.times do |i|
  N.times do |j|
    next if i == j
    min_2t = [[A[i],B[j]].max,min_2t].min
  end
end

puts [min_t,min_2t].min