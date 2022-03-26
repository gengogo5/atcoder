A,B,C,D = gets.split.map(&:to_i)


if A < C || (A == C && B <= D)
  puts 'Takahashi'
else
  puts 'Aoki'
end