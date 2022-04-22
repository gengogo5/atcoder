N = gets.to_i
S = gets.split.map(&:to_i)

cnt = 0
S.each do |s|
  hit = false
  (1..s).each do |a|
    (1..s).each do |b|
      if s == (4*a*b)+(3*a)+(3*b)
        hit = true
        break
      end
    end
    break if hit
  end
  cnt += 1 unless hit
end
puts cnt
