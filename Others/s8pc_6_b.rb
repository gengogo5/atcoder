N = gets.to_i
A,B = N.times.map { gets.split.map(&:to_i) }.transpose

min_t = Float::INFINITY
A.each do |ent|
  B.each do |exit|
    sum = 0
    N.times do |i|
      ent2a = (ent - A[i]).abs
      a2b = (A[i] - B[i]).abs
      b2exit = (B[i] - exit).abs
      sum += ent2a + a2b + b2exit
    end
    min_t = [min_t, sum].min
  end
end

puts min_t
