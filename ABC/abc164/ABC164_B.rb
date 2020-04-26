a,b,c,d = gets.split.map(&:to_i)

winner = ''
loop do
  c -= b
  if c <= 0
    winner = 'Yes'
    break
  end

  a -= d
  if a <= 0
    winner = 'No'
    break
  end
end

puts winner
