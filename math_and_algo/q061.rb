N = gets.to_i

# 1,3,7,15の時に先手が負ける
# 2**k-1の時に負ける

win = true
(1..60).each do |i|
  k = 2 ** i
  if k > N
    if N == k - 1
      win = false
    end
  end
end

puts win ? 'First' : 'Second'
