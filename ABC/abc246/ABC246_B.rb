A,B = gets.split.map(&:to_i)

# 距離を求める
l = Math.sqrt(A**2 + B**2)

# 単位ベクトルを求める
dx = A / l.to_f
dy = B / l.to_f

puts "#{dx} #{dy}"