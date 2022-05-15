N = read_line.to_i
A = read_line.split.map(&.to_i)

cnt = 0
(0...N).each do |i|
  ((i+1)...N).each do |j|
    ((j+1)...N).each do |k|
      ((k+1)...N).each do |l|
        ((l+1)...N).each do |m|
          cnt += 1 if A[i] + A[j] + A[k] + A[l] + A[m] == 1000
        end
      end
    end
  end
end

puts cnt
