S,T,X = gets.split.map(&:to_i)

light = Array.new(24) {false}

S.upto(24) do |t|
  break if t == T
  light[t-1] = true
end

1.upto(S) do |t|
  break if t == T
  light[t-1] = true
end

puts light[X] ? 'Yes' : 'No'