S = 4.times.map { gets.chomp }

if S.sort == ['2B','3B','H','HR']
  puts 'Yes'
else
  puts 'No'
end