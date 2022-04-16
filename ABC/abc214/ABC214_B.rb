S,T = gets.split.map(&:to_i)

cnt = 0
0.upto(100) do |a|
  0.upto(100) do |b|
    0.upto(100) do |c|
      cnt += 1 if a*b*c <= T && a+b+c <=S
    end
  end
end
puts cnt