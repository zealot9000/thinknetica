puts "Enter the year:"
  year = gets.chomp.to_i

puts "Enter the month number:"
  month = gets.chomp.to_i

puts = "Enter the date:"
  date = gets.chomp.to_i

arr_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

arr_months[1] = 29 if year % 4 == 0 || year % 100 != 0 || year % 400 == 0   
  
count = arr_months.take(month - 1).reduce(0) {|sum, i| sum+i}

puts "Days since the beginning of the year: #{count + date}"



  
