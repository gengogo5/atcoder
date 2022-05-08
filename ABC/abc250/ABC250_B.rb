N,A,B = gets.split.map(&:to_i)

w = true
N.times do
  A.times do
    (1..N).each do |i|
      if i.odd?
        if w
          B.times { print '.' }
        else
          B.times { print '#' }
        end
      else
        if w
          B.times { print '#' }
        else
          B.times { print '.' }
        end
      end
    end
    puts ''
  end
  w = !w
end
