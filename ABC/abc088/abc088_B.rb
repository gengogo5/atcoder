N = gets.to_i
a = gets.split.map(&:to_i)

a.sort!.reverse!

alice = 0
bob = 0

(0...N).each do |i|
  if i.even?
    alice += a[i]
  else
    bob += a[i]
  end
end

puts alice-bob
