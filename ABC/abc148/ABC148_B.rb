N = gets.to_i
S,T = gets.split(" ")

merged = N.times.map do |i|
  S[i] + T[i]
end

puts merged.join