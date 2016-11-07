puts "Введите коэффециент А."
  a = gets.chomp
puts "Введите коэффециент B."
  b = gets.chomp
puts "Введите коэффециент C."
  c = gets.chomp    

d = b.to_i**2 - 4*a.to_i*c.to_i
x1 = (-b.to_i - Math.sqrt(d.to_i)) / (2*a.to_i)  
x2 = (-b.to_i + Math.sqrt(d.to_i)) / (2*a.to_i)

if d > 0  
  puts "Дискриминант уравнения: #{d}. Уравнение имеет два корня: X1 = #{x1} и X2 = #{x2}."
elsif d == 0
  puts "Дискриминант уравнения: #{d}. Уравнение имеет один корень: X = #{x1}."
else
  puts "Дискриминант уравнения: #{d}. Уравнение не имеет корней."
end    