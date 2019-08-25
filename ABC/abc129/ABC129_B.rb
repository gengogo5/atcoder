N = gets.to_i
W = gets.split.map(&:to_i)
sum = 0
S = W.each.map { |w| sum+=w }

min = 100
N.times do |i|
  if (2*S[i]-S[N-1]).abs < min
    min = (2*S[i]-S[N-1]).abs
  end
end
puts min
