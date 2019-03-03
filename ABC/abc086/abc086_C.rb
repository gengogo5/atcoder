N = gets.to_i
txy = N.times.map { gets.split.map(&:to_i)}

nowX = 0
nowY = 0
nowT = 0
nxtX = 0
nxtY = 0

isFailed = false
(0...N).each do |i|
  nxtT = txy[i][0]
  nxtX = txy[i][1]
  nxtY = txy[i][2]

  leastCost = (nxtX - nowX).abs + (nxtY - nowY).abs
  time = nxtT - nowT

  nowX = nxtX
  nowY = nxtY
  nowT = nxtT

  if leastCost.even? != time.even?
    isFailed = true
    break
  end

  if time < leastCost
    isFailed = true
    break
  end
end

if isFailed
  puts 'No'
else
  puts 'Yes'
end
