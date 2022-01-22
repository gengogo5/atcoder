N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
sm = A.sum

if sm == K
  puts 'Yes'
elsif sm > K
  puts 'No'
else
  if K.even? == sm.even?
    puts 'Yes'
  else
    puts 'No'
  end
end

