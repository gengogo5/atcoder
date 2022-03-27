S = gets.chomp
T = gets.chomp

mx = 0
(S.length - T.length + 1).times do |i|
  eq = 0
  T.length.times do |j|
    eq += 1 if T[j] == S[j+i]
  end
  mx = [mx, eq].max
end

puts T.length - mx