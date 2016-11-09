puts "Как вас зовут?"
  name = gets.chomp
puts "Какой у вас рост?"  
  height = gets.chomp.to_i

  ideal_weight = height - 110

if ideal_weight < 0
  puts "Поздравляю, #{name}, ваш вес уже идеален." 
else
  puts "#{name}, ваш идеальный вес: #{ideal_weight}."
end 
 
