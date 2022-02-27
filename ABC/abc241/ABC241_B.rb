N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

failed = false
M.times do |i|
  idx = A.find_index(B[i])
  if idx.nil?
    failed = true
    break
  end
  A.delete_at(idx)
end

puts failed ? "No" : "Yes"
