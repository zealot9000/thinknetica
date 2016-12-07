class Route

attr_accessor :stations #:route, :first_station, :last_station 

  def initialize(stations=[])
    @stations = stations
  end   

  def add_station(station)
    @stations = @stations.insert(-2, station)
  end
  
  def del_station(station)
    @stations.delete(station)
  end 

  def station_list
    @stations
  end  

  # def route_station(station_index)
  #   @route[station_index]
  # end  

  # def last_station
  #   @route.last
  # end  
  
  # def station_index(station)
  #   @route.index(station.name)
  # end  

end 