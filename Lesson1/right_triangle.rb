puts "Введите сторону А."
  a = gets.chomp
puts "Введите сторону B."
  b = gets.chomp
puts "Введите сторону C."
  c = gets.chomp


if (a.to_i ** 2) +  (b.to_i ** 2) == c.to_i ** 2
  puts "Треугольник является прямоугольным."
elsif a.to_i == b.to_i && b.to_i == c.to_i && a.to_i == c.to_i
  puts "Треугольник равносторонний и равнобедренный, но не прямоугольный."
elsif a.to_i == b.to_i || b.to_i == c.to_i || a.to_i == c.to_i  
  puts "Треугольник равнобедренный."
else
  puts "Обычный такой треугольник."  
end