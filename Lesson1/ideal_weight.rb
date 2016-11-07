puts "Как вас зовут?"
  name = gets.chomp
puts "Какой у вас рост?"  
  height = gets.chomp

  ideal_weight = height.to_i - 110

 if ideal_weight > 0
  puts "#{name}, ваш идеальный вес: #{ideal_weight}."
 else
  puts "Поздравляю, #{name}, ваш вес уже идеален." 
 end 
 
