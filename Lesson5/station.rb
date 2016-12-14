require_relative 'modules/instance_counter'

class Station
  include InstanceCounter
  
  attr_accessor :name, :list_trains

  @@station_list = []

  def initialize(name)
    @name = name
    @list_trains = []
    @@station_list << self
    register_instance
  end  

  class << self
    def all
      @@station_list
    end  
  end
 
  def trains_type
    @list_trains.each { |train| puts "#{train.type} - №#{train.number}" }
  end

  def take_a_train(train)
    @list_trains << train
  end 

  def send_train(train)
    @list_trains[train.type.to_sym].delete(train)
  end   
  
end 


