class PassengerCarriage < Carriage
  PASSENGER_UNITS = 60

  def initialize
    @type = :passenger
    @number_of_units = @total_units = PASSENGER_UNITS
  end
end
