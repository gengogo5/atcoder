A,B,C = gets.split.map(&:to_i)
if A+B == C && A-B == C
  puts '?'
elsif A+B == C
  puts '+'
elsif A-B == C
  puts '-'
else
  puts '!'
end
