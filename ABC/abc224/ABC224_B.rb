H,W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }

no = false
(1..H).each do |i1|
  ((i1+1)..H).each do |i2|
    (1..W).each do |j1|
      ((j1+1)..W).each do |j2|
        no = true if A[i1-1][j1-1] + A[i2-1][j2-1] > A[i2-1][j1-1] + A[i1-1][j2-1]
      end
    end
  end
end

puts no ? 'No' : 'Yes'