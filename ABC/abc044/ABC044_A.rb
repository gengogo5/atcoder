N,K,X,Y = 4.times.map { gets.to_i }
p N <= K ? X*N : X*K + (N-K)*Y

