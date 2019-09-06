N,A,B = gets.split.map(&:to_i)

p = 0 # 直大くんの位置
N.times do |i|
  s,d = gets.chomp.split
  d = d.to_i
  l = if d < A
        A
      elsif A <= d && d <= B
        d
      else
        B
      end

  if s == 'East'
    p += l
  else
    p -= l
  end
end

if p > 0
  puts "East #{p}"
elsif p < 0
  puts "West #{p.abs}"
else
  p p
end
