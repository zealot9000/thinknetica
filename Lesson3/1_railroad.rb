class Station

  attr_accessor :name, :trains 

  def initialize(name)
    @name = name
    @trains = []
  end  
 
  def trains_type
    pass_trains = 0
    cargo_trains = 0

    @trains.each do |train|
      pass_trains += 1 if train.type == "passenger"
      cargo_trains += 1 if train.type == "cargo"
    end  

    puts "Station: #{@name}, cargo trains: #{cargo_trains}, passenger trains: #{pass_trains}"    
  end

  def take_a_train(train)
    @trains << train
  end 

  def send_train(train)
    train = @trains.pop {|x| x.number == train.number}
  end  
end 


class Route

 attr_accessor :first_station, :last_station, :route

  def initialize(first_station, last_station)
    @route = [first_station, last_station]
    @first_station = first_station
    @last_station = last_station
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

  def route_station(station)
    @route[station]
  end

  def index
    @route.index
  end  
end  


class Train

  attr_accessor :number, :type, :wagons, :speed, :set_route, :current_station, :moving_to_the_next_station

  def initialize(type, wagons = 1, speed = 0)
    @number = rand(1..50)
    @type = type
    @wagons = wagons
    @speed = speed
    @station_number = 0
  end

  def speed_up
    @speed = 70
  end
  
  def stop
    @speed = 0
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

  def route
    @route 
  end  

  def set_route(route)
    @route = route
  end

  def current_station
    @current_station = @route.route_station(@station_number) 
  end  

  def previous_station
    if @station_number != 0
      @current_station = @route.route_station(@station_number - 1) 
    else
      puts "The train to the first station."
    end    
  end  

  def next_station
    if @station_number + 1 != nil
      @current_station = @route.route_station(@station_number + 1)
    else
      puts "End station."
    end    
  end  

  def moving_to_the_next_station(station)  
    self.speed_up if @speed.zero?
    puts "Speed: #{self.speed}"

    @station_number += 1

    @current_station = @route.station_list.index(@station_number)

    puts "The train arrived at the station: #{self.current_station}"
    
    station.take_a_train(self)

  end  
end
