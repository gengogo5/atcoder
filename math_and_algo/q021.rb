# nCrを求める
n,r = gets.split.map(&:to_i)

def fct(n)
  n <= 1 ? 1 : n * fct(n - 1)
end

# n! / r! * (n - r)!
def ncr(n, r)
  n.downto(n-r+1).inject(:*) / fct(r)
  # ((n-r+1)..n).inject(:*) / (1..r).inject(:*)
end

puts ncr(n, r)
