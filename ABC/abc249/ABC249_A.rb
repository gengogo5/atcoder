A,B,C,D,E,F,X = gets.split.map(&:to_i)

x = 0
t_k = 0
a_k = 0
t_end = false
a_end = false
loop do
  A.times do |a|
    t_k += B
    x += 1
    if x >= X
      t_end = true
      break
    end
  end
  C.times do |c|
    x += 1
    if x >= X
      t_end = true
      break
    end
  end
  break if t_end
end

x = 0
loop do
  D.times do |a|
    a_k += E
    x += 1
    if x >= X
      a_end = true
      break
    end
  end
  F.times do |c|
    x += 1
    if x >= X
      a_end = true
      break
    end
  end
  break if a_end
end

if a_k > t_k
  puts 'Aoki'
elsif a_k < t_k
  puts 'Takahashi'
else
  puts 'Draw'
end