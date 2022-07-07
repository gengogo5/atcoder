N = gets.to_i
T = []
K = []
A = []
N.times do
  tka = gets.split.map(&:to_i)
  T << tka[0]
  K << tka[1]
  A << tka[2..-1]
end

queue = [N]
skl = Hash.new(false)
skl[N] = true
cost = 0
needs = [N]
while (queue.size != 0)
  sk = queue.shift
  skl[sk] = true
  A[sk-1].each do |a|
    next if skl[a]
    queue << a
    needs << a
  end
end

costs = 0
needs.uniq.each do |sk|
  costs += T[sk-1]
end

puts costs