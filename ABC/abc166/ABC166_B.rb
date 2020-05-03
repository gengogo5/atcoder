N,K = gets.split.map(&:to_i)

h = Hash.new(0)

K.times do |k|
  d = gets.to_i
  a = gets.split.map(&:to_i)
  a.each do |aa|
    h[aa-1] += 1
  end
end

cnt = 0
N.times do |n|
  cnt += 1 if h[n] == 0
end

p cnt