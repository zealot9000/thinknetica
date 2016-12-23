class CargoCarriage < Carriage
  
  def initialize 
   @carriage_number = rand(1..1000)          
   @type = :cargo
   @number_of_units = @total_units = 6000
  end  
end 