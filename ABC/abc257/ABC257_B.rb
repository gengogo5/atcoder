N,K,Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
L = gets.split.map(&:to_i)

n = Array.new(N+1,0)

K.times do |i|
  n[A[i]] = 1
end

Q.times do |i|
  cnt = 0
  (1..N).each do |j|
    cnt += 1 if n[j] == 1
    if cnt == L[i] && j != N
      if n[j+1] == 0
        n[j] = 0
        n[j+1] = 1
      end
    end
  end
end

ans = []
n.each_with_index do |n,idx|
  ans << idx if n == 1
end

puts ans.join(" ")