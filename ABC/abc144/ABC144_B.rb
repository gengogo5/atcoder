N = gets.to_i

# 9*9の結果をハッシュにもたせてO(1)で存在確認する
is99 = Hash.new(false)
(1..9).each do |i|
  (1..9).each do |j|
    is99[i*j] = true
  end
end

puts is99[N] ? 'Yes' : 'No'