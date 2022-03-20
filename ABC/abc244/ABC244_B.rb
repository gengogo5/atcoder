N = gets.to_i
T = gets.chomp

x = 0
y = 0
d = 0

T.chars.each do |c|
  if c == 'S'
    case d
    when 0 then x += 1
    when 1 then y -= 1
    when 2 then x -= 1
    when 3 then y += 1
    end
  else
    d = d == 3 ? 0 : d+1
  end
end

puts "#{x} #{y}"
