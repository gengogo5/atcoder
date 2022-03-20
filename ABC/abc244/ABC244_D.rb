S1,S2,S3 = gets.chomp.split
T1,T2,T3 = gets.chomp.split

cnt = 0
cnt += 1 if S1 == T1
cnt += 1 if S2 == T2
cnt += 1 if S3 == T3

if cnt == 0 || cnt == 3
  puts 'Yes'
else
  puts 'No'
end