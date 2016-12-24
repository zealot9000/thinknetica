class PassengerCarriage < Carriage
  
  def initialize 
   @carriage_number = rand(1..1000)      
   @type = :passenger
   @number_of_units = @total_units = 60
  end
end