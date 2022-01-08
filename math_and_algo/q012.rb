# 素数判定
def is_prime(num)
  tgt = Math.sqrt(num).to_i
  (2..tgt).each do |i|
    return false if (num % i == 0)
  end
  true
end

N = gets.to_i

puts is_prime(N) ? "Yes" : "No"
