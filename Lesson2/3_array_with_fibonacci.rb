arr =[]
count = 0
a = 0
b = 1
for i in (2..100) 
    c = a + b
    a, b = b, c
    count += 1
    arr << b
end 

puts arr