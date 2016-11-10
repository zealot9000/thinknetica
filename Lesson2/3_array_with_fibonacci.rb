arr =[0, 1]

for i in (2..100) 
    arr << arr[-1] + arr[-2]
end 

puts arr