N,K = gets.split.map(&:to_i)

sum = 0
1.upto(N) do |i|
  1.upto(K) do |j|
    sum += "#{i}0#{j}".to_i
  end
end

puts sum