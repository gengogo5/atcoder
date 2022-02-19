def dist(a,b,c,d)
  (a - c) ** 2 + (b - d) ** 2
end

def solve(x1,y1,x2,y2)
  (x1-2).upto(x1+3).each do |x|
    (y1-2).upto(y1+3).each do |y|
      if dist(x,y,x1,y1) == 5 && dist(x,y,x2,y2) == 5
        return 'Yes'
      end
    end
  end
  'No'
end

x1,y1,x2,y2 = gets.split.map(&:to_i)
puts solve(x1,y1,x2,y2)
