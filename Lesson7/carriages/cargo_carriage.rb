class CargoCarriage < Carriage

  CARGO_UNITS = 6000

  def initialize 
   @type = :cargo
   @number_of_units = @total_units = CARGO_UNITS
  end  
end 