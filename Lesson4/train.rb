class Train

  attr_accessor :number, :type, :wagons, :speed, :set_route, :moving_to_the_next_station, :route

  def initialize(type, wagons = 1, speed = 0)
    @number = rand(1..50)
    @type = type
    @wagons = wagons
    @speed = speed
  end

  def moving_to_the_next_station(station_from, station_to)  
    self.speed_up(80) if @speed.zero?
    puts "Speed: #{self.speed}"

    @station_index = @route.station_index(station_to)

    puts "The train arrived at the station: #{self.current_station}"
    
    if @current_station != @route.last_station
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
    @route.route_station(@station_index)
  end  

  def previous_station
      @route.route_station(@station_index - 1) 
  end  

  def next_station
       @route.route_station(@station_index + 1)  
  end 

  def set_route(route)
    @route = route
  end

  def speed_up(speed)
    if speed < 0 
      puts "Error. The speed is a negative value."
    elsif  speed < 100 
      @speed = speed
      puts "Speed: #{@speed}" 
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