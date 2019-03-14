n = gets.to_i
v = gets.split.map(&:to_i)

e = Hash.new(0)
o = Hash.new(0)

n.times do |i|
  if i.even?
    e[v[i]] += 1
  else
    o[v[i]] += 1
  end
end

e = e.sort_by { |_,v| -v }
o = o.sort_by { |_,v| -v }

e1 = e.shift
e2 = (e.shift || 0)
o1 = o.shift
o2 = (o.shift || 0)


if e1[0] == o1[0]
	puts n - [(e1[1] + o2[1]), (e2[1] + o1[1])].max
else
	puts n - (e1[1] + o1[1])
end
