N,S = gets.split.map(&:to_i)

cnt = 0
(1..N).each do |r|
  (1..N).each do |b|
    if (r + b <= S)
      cnt += 1
    end
  end
end

puts cnt

