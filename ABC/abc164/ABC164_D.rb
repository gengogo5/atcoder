### TLE
S = gets.chomp

N = S.chars.size

## 3桁以下は無い
p 0 and exit if N <= 3

cnt = 0
N.times do |i|
  ((i+3)...N).each do |j|
    p S[i..j].to_i
    if S[i..j].to_i % 2019 == 0
      cnt += 1
      break
    end
  end
end

p cnt
