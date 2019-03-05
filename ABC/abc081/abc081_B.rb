N = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0

loop do
  unless a.all?(&:even?)
    break
  end
  a = a.map { |n| n/2 }
  cnt += 1
end

puts cnt
