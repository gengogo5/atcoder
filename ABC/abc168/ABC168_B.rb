K = gets.to_i
S = gets.chomp

if S.length <= K
  puts S
else
  puts S.slice(0,K) + '...'
end