hash = {}

purchase = 0

loop do 
  puts "Enter the product name or stop for exit: "
    purchase = gets.chomp.to_s
  
  break if purchase == "stop"
    
  puts "Enter the price of the goods: "
    price = gets.chomp.to_f
  puts "Enter the quantity of the goods"    
    quantity = gets.chomp.to_f

  hash[purchase] = {price: price, quantity: quantity}

  arr = []

  hash.each {|k, v| puts "Price of #{k}: #{v[:price]*v[:quantity]}" && arr << v[:price]*v[:quantity]}
  
  puts hash
  puts "Total price: #{arr.reduce(:+)}"

end  

