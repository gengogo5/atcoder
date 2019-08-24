N = gets.to_i
if N%3==0 || N.to_s.match(/3/)
  puts 'YES'
else
  puts 'NO'
end
