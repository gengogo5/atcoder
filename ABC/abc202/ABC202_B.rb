S = gets.chomp
s2 = S.chars.map do |c|
  if c == '9'
    '6'
  elsif c == '6'
    '9'
  else
    c
  end
end.join.reverse

puts s2