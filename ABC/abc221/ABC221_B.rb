S = gets.chomp
T = gets.chomp

if S == T
  puts 'Yes'
else
  cnt = 0
  idx = []
  S.length.times do |i|
    if S[i] != T[i]
      cnt += 1
      idx << i
    end
  end
  if cnt == 2 && (idx[0]-idx[1]).abs == 1 && S[idx[0]] == T[idx[1]] && S[idx[1]] == T[idx[0]]
    puts 'Yes'
  else
    puts 'No'
  end
end