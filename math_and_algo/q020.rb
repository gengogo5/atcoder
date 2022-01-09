# TLEになる
N = gets.to_i
A = gets.split.map(&:to_i)

cnt = 0
#(0...N).each do |i|
#  ((i+1)...N).each do |j|
#    ((j+1)...N).each do |k|
#      ((k+1)...N).each do |l|
#        ((l+1)...N).each do |m|
#          cnt += 1 if A[i] + A[j] + A[k] + A[l] + A[m] == 1000
#        end
#      end
#    end
#  end
#end

i = 0
while (i < N) do
  j = i + 1
  while (j < N) do
    k = j + 1
    while (k < N) do
      l = k + 1
      while (l < N) do
        m = l + 1
        while (m < N) do
          cnt += 1 if A[i] + A[j] + A[k] + A[l] + A[m] == 1000
          m += 1
        end
        l += 1
      end
      k += 1
    end
    j += 1
  end
  i += 1
end

puts cnt
