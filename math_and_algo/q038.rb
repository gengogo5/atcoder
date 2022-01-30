N,Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
L,R = Q.times.map { gets.split.map(&:to_i) }.transpose

def csum(array)
  csum = []
  0.upto(array.size) do |i|
    if i == 0
      csum[i] = 0
    else
      csum[i] = array[i-1] + csum[i-1]
    end
  end
  csum
end

# 累積和配列を作成
M = csum(A)

Q.times do |i|
  puts M[R[i]] - M[L[i]-1]
end

