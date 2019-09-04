S = gets.chomp
T = gets.chomp

win = true
S.length.times do |i|
  next if S[i] == T[i]
  next if S[i] == '@' && T[i] == '@'
  next if S[i] == '@' && 'atcoder'.include?(T[i])
  next if T[i] == '@' && 'atcoder'.include?(S[i])
  win = false
  break
end

puts win ? 'You can win' : 'You will lose'
