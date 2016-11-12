arr = [0, 1]

loop do
    next_fib = arr[-1] + arr[-2]
    break if next_fib > 100
    arr.push(next_fib)
end 

puts arr