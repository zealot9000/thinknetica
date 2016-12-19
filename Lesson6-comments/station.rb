require_relative 'modules/instance_counter'

class Station
  include InstanceCounter
  
  attr_accessor :name, :list_trains

  NAME_FORMAT = /^[a-zA-Zа-яА-Я]/

  @@station_list = []

  def initialize(name)
    @name = name
    @list_trains = []
    @@station_list << self
    register_instance
    validate!
  end  

  class << self
    def all
      @@station_list
    end  
  end 

  def valid?
    validate!
  rescue
    false  
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

protected
  
  def validate!
    raise "Station Name should be longer than two characters." if name.length < 2
    raise "Station name must consist of letters." if name !~ NAME_FORMAT
    true
  end     
  
end 