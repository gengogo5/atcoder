a,b = gets.split.map(&:to_i)

as = a.to_s * b
bs = b.to_s * a

if as < bs
  puts as
else
  puts bs
end