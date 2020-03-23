N,K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort!.reverse!

if N <= K
  p 0
else
  p H[K..-1].inject(:+)
end
