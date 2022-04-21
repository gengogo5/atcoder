N = gets.to_i
graph = Array.new(N+1) { Array.new }
(N-1).times do
  a,b = gets.split.map(&:to_i)
  graph[a] << b
  graph[b] << a
end

star = true
(1..N).each do |i|
  root = nil
  if graph[i].size == 1
    root ||= graph[i]
    if graph[i] != root
      star = false
      break
    end
  else
    root ||= i
    ary = (1..N).to_a
    ary.delete(i)
    if graph[i].sort != ary.sort
      star = false
      break
    end
  end
end

puts star ? 'Yes' : 'No'