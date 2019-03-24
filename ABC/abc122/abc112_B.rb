S = gets.chomp

max = 0
S.length.times do |i|
  len = 0
  (i...S.length).each do |j|
    if S[j] == 'A' or S[j] == 'G' or S[j] == 'C' or S[j] == 'T'
      len += 1
    else
      break
    end
  end

  if max < len
    max = len
  end
end

puts max
