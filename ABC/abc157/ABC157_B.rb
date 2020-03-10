A = 3.times.map { gets.split.map(&:to_i) }
N = gets.to_i
b = N.times.map { gets.to_i }

# マーク配列
M = [[false,false,false],[false,false,false],[false,false,false]]

# マーキング
b.each do |i|
  (0..2).each do |j|
    (0..2).each do |k|
      if A[j][k] == i
        M[j][k] = true
      end
    end
  end
end

# ビンゴ判定
if (M[0][0] && M[0][1] && M[0][2]) ||
  (M[1][0] && M[1][1] && M[1][2]) ||
  (M[2][0] && M[2][1] && M[2][2]) ||
  (M[0][0] && M[1][0] && M[2][0]) ||
  (M[0][1] && M[1][1] && M[2][1]) ||
  (M[0][2] && M[1][2] && M[2][2]) ||
  (M[0][0] && M[1][1] && M[2][2]) ||
  (M[0][2] && M[1][1] && M[2][0])
  puts 'Yes'
else
  puts 'No'
end
