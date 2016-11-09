puts "Введите сторону А."
  a = gets.chomp.to_f
puts "Введите сторону B."
  b = gets.chomp.to_f
puts "Введите сторону C."
  c = gets.chomp.to_f

arr = []
arr.push(a, b, c).sort!

if arr[0] == arr[1] && arr[1] == arr[2] && arr[2] == arr[0] 
  puts "Треугольник равносторонний и равнобедренный, но не прямоугольный."
elsif arr[0]**2 + arr[1]**2 == arr[2]**2 
  puts "Треугольник является прямоугольным."
elsif (arr[0]**2 + arr[1]**2 == arr[2]**2) && (arr[0] == arr[1] || arr[1] == arr[2] || arr[0] == arr[2]) 
  puts "Треугольник является прямоугольным и равнобедренным."  
elsif arr[0] == arr[1] || arr[1] == arr[2] || arr[0] == arr[2]
  puts puts "Треугольник равнобедренный."
else 
  puts "Обычный треугольник."  
end  



