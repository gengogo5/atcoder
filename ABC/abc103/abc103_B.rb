S = gets.chomp
T = gets.chomp

matched = false
S.length.times do
  if S == T
    matched = true
    break
  end
  S.insert(0,S[-1])
  S.chop!
end

if matched
  puts 'Yes'
else
  puts 'No'
end
