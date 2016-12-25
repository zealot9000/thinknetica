class CargoCarriage < Carriage

  attr_accessor :number

  CARGO_UNITS = 6000

  def initialize 
   @number = rand(1..1000)          
   @type = :cargo
   @number_of_units = @total_units = CARGO_UNITS
  end  
end 