class PassengerCarriage < Carriage

  attr_accessor :number

  PASSENGER_UNITS = 60
  
  def initialize 
   @number = rand(1..1000)      
   @type = :passenger
   @number_of_units = @total_units = PASSENGER_UNITS
  end
end