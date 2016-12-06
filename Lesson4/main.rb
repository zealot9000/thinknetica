require_relative 'station'
require_relative 'train'
require_relative 'route'



train1 = Train.new('cargo')
route1 = Route.new('batat', 'batut')
route1.add_station('kapustka')
route1.add_station('tipsi')
station1 = Station.new('batat')
station2 = Station.new('kapustka')
station3 = Station.new('tipsi')
station4 = Station.new('batut')
train1.set_route(route1)
# train1.route
# train1.route.station_list
train1.moving_to_the_next_station(station1, station2)
station1.trains


station1.trains
station2.trains
station3.trains

train1.current_station