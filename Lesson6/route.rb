class Route

attr_accessor :stations 

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

end 