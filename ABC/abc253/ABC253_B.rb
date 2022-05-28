H,W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.chars }

xy = []
H.times do |i|
  W.times do |j|
    if S[i][j] == 'o'
      xy << [i,j]
    end
  end
end

a = (xy[0][0] - xy[1][0]).abs
b = (xy[0][1] - xy[1][1]).abs

puts a + b