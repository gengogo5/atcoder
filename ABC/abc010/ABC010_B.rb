n = gets.to_i
a = gets.split.map(&:to_i)

# 凄まじく頭の悪い解法
m = a.each.map do |i|
    case i
    when 8
      1
    when 6
      3
    when 5
      2
    when 4
      1
    when 2
      1
    else
      0
    end
  end
p m.inject(:+)
