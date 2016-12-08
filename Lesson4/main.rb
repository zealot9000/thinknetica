require_relative 'station'
require_relative 'train'
require_relative 'route'
require_relative 'carriage'

stations = []
trains = []

class Main
		
  def initialize
    @stations = []
    @trains = []
  end

  def menu
    loop do	
				puts "
						Select an action:
						
						1. Create station.
						2. Create train.
						3. Attach carriage to the train.
						4. Detach carriage of the train.
						5. Put the train station.
						6. View a list of stations.
						7. View a list of trains.
						8. Quit the program.
						"
			choice = gets.chomp.to_i
			
			case choice
			
			when 1
				create_station
			when 2
				create_train
			when 3
				attach_carriage
			when 4
				detach_carriage
			when 5
				send_train
			when 6
				stations_list
			when 7
				trains_list
			when 8
				exit
			else
				puts "Select the number action."
			end
		end
	end	
	
	def create_station
				puts "Enter the name of the station: "
		station = gets.chomp
		@stations << Station.new(station)
		puts "Station #{station} created"
	end	 
	
	def create_train
		puts "What type of train you want to create, passenger or cargo?
					1. Passenger
					2. Cargo"
		train_type = gets.chomp.to_i
		
		puts "Enter the train number: "
		train_number = gets.chomp.to_i
		
		if train_type == 1
			@trains << PassengerTrain.new(train_number)
			puts "Passenger train with number #{train_number} created."
		elsif train_type == 2
			@trains << CargoTrain.new(train_number)
			puts "Cargo train with number #{train_number} created."
		else
			puts "Wrong type of train!"
		end	
	end	
	
  def  attach_carriage
		if @trains.size > 0
      puts "Choose train to attach: "
      index = 0
      @trains.each do |value|
        index += 1
        puts "#{index}. #{value.type} - №#{value.number}"
      end
      
      choice = gets.chomp.to_i
      
      if choice <= @trains.size
        @trains[choice-1].add_carriage(PassengerCarriage.new) if @trains[choice-1].type == "passenger"
        @trains[choice-1].add_carriage(CargoCarriage.new) if @trains[choice-1].type == "cargo"
        puts "Carriage attached"
      else
        puts "Error. No such train"
      end
    else
      puts "Create any train at first"
    end 
  end	
  
  def detach_carriage
  	if @trains.size > 0
  		puts "Choose train to detach: "
  		index = 0
  		@trains.each do |value|
  			index += 1
  			puts "#{index}. #{value.type} - №#{value.number}"
    end
      
    choice = gets.chomp.to_i
       
    if choice <= @trains.size
      @trains[choice-1].del_carriage
        puts "Carriage detached" 
    end
  end
       
       
  end	
  
  def send_train
  end	
  
  def stations_list
  	if @stations.size > 0
  		@stations.each {|value| puts "Station: #{value.name}"}
  	else
  		puts "No stations."
  	end	
  end	
  
  def trains_list
  	if @trains.size > 0
	  	@trains.each {|value| puts "Train: #{value.number}, type: #{value.type}"}
		else
			puts "No trains."
		end	
  end	

end					


main = Main.new
main.menu

# train1 = Train.new('cargo')
# route1 = Route.new('batat', 'batut')
# route1.add_station('kapustka')
# route1.add_station('tipsi')
# station1 = Station.new('batat')
# station2 = Station.new('kapustka')
# station3 = Station.new('tipsi')
# station4 = Station.new('batut')
# train1.set_route(route1)
# train1.route
# train1.route.station_list
# train1.moving_to_the_next_station(station1, station2)
# station1.trains


# station1.trains
# station2.trains
# station3.trains

# train1.current_station