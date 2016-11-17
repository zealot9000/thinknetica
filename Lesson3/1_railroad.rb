class Station

  attr_accessor :name, :trains 

  def initialize(name)
    @name = name
    @trains = {
      cargo: [],
      pass: []
    }
  end  
 
  def trains_type
    cargo_train = @trains[:cargo].count
    pass_train = @trains[:pass].count

    puts "Station: #{@name}, cargo trains: #{cargo_train}, passenger trains: #{pass_train}"    
  end

  def take_a_train(train)
    if train.type == "cargo"
      @trains[:cargo] << train
    elsif train.type == "pass"
      @trains[:pass] << train
    else 
       puts "Unknown type of train."   
    end      
  end 

  def send_train(train)
    @trains[train.type.to_sym].delete(train)
  end  
end 


class Route

 attr_accessor :route, :first_station, :last_station 

  def initialize(first_station, last_station)
    @route = [first_station, last_station]
  end   

  def add_station(station)
    @route.insert(-2, station)
  end
  
  def del_station(station)
    @route.delete(station)
  end 

  def station_list
    @route
  end  

  def route_station(station_index)
    @route[station_index]
  end  
end  


class Train

  attr_accessor :number, :type, :wagons, :speed, :set_route, :moving_to_the_next_station

  def initialize(type, wagons = 1, speed = 0)
    @number = rand(1..50)
    @type = type
    @wagons = wagons
    @speed = speed
  end

  def moving_to_the_next_station(station_from, station_to)  
    self.speed_up(80) if @speed.zero?
    puts "Speed: #{self.speed}"

    @train_index = @route.route.index(station_to.name)

    puts "The train arrived at the station: #{self.current_station}"
    
    if @current_station != @route.route.last
      station_to.take_a_train(self) 
    else
      puts "The train at the last station." 
    end   

    if @current_station != @route.route.first
      station_from.send_train(self)
    else
      puts "The train to the first station."  
    end  
  end 

  def current_station
    @route.route_station(@train_index)
  end  

  def previous_station
      @route.route_station(@train_index - 1) 
  end  

  def next_station
       @route.route_station(@train_index + 1)  
  end 

  def set_route(route)
    @route = route
  end

  def speed_up(speed)
    if speed < 100
      @speed = speed
      puts "Speed: #{@speed}"
    elsif speed == 0 
      @speed == 0
      puts "The train stopped."  
    else
      puts "The train can not go so fast!"
    end    
  end
  
  def stop
    @speed = 0
    puts "The train stopped." 
  end  

  def add_wagon
    if @speed.zero?
      @wagons += 1
    else
      puts "It's impossible. The train moves."
    end
  end

  def del_wagon
    if @speed.zero? && @wagons > 0 
      @wagons -= 1 
    else  
      puts "It's impossible. The train is moving or wagons left."
    end  
  end  
end
