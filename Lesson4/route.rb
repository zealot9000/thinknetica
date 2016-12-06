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

  def last_station
    @route.last
  end  
  
  def station_index(station)
    @route.index(station.name)
  end  
end 