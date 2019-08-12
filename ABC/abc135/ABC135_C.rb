N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

cnt = 0
N.times do |i|
  # i番目の街のモンスターを倒す
  if A[i] > B[i]
    A[i] -= B[i]
    cnt += B[i]
    B[i] -= B[i]
  else
    B[i] -= A[i]
    cnt += A[i]
    A[i] = 0
  end

  # i+1番目の街のモンスターを倒す
  if A[i+1] > B[i]
    A[i+1] -= B[i]
    cnt += B[i]
    B[i] -= B[i]
  else
    B[i] -= A[i+1]
    cnt += A[i+1]
    A[i+1] = 0
  end
end

puts cnt
