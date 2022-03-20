S1 = gets.chomp
S2 = gets.chomp

# 最低2つは#が入る
if S1[0] != S2[0] && S1[1] != S2[1] && S1[0] != S1[1] && S2[0] != S2[1]
  puts 'No'
else
  puts 'Yes'
end