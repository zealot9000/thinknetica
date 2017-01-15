require_relative 'modules/instance_counter'
require_relative 'modules/validation'

class Station
  include InstanceCounter
  include Validation

  NAME_FORMAT = /^[a-zA-Z0-9]{2,10}$/
  @@station_list = []

  validate :name, :presence

  attr_accessor :name, :list_trains

  class << self
    def all
      @@station_list
    end
  end

  def initialize(name)
    @name = name
    @list_trains = []
    validate!
    @@station_list << self
    register_instance
  end

  def each_train(&block)
    @list_trains.each(&block)
  end

  def show_all_trains
    @@station_list.each { |train| puts "Train number: #{train.number}, train type: #{train.type}, train carriages: #{train.carriages}" }
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

  # protected

  # def validate!
  #   raise 'Station Name should be longer than two characters.' if name.length < 2
  #   raise 'Station name must consist of letters.' if name !~ NAME_FORMAT
  # end
end
