arr =[0, 1]

for i in (2..100) 
    arr << arr[-1] + arr[-2]
    break if arr.last > 100
end 

puts arr