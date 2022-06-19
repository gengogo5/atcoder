h1,h2,h3,w1,w2,w3 = gets.split.map(&:to_i)

ans = 0
(1..30).each do |a|
  (1..30).each do |b|
    (1..30).each do |d|
      (1..30).each do |e|
        c = h1 - a - b
        f = h2 - d - e
        g = w1 - a - d
        h = w2 - b - e
        i = w3 - c - f
        if [c,f,g,h,i].min > 0 && g + h + i == h3
          ans += 1
        end
      end
    end
  end
end
puts ans