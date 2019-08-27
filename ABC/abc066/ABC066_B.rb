S = gets.chomp

loop do
  S.slice!(-1)
  l = S.length
  next if l.odd?
  if S[0..(l/2)-1] == S[(l/2)..(l-1)]
    puts l
    break
  end
end
