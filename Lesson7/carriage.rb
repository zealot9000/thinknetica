require_relative 'modules/company'

class Carriage

  include Company  

  attr_reader :type 
  attr_accessor :number_of_units
  
  def initialize(type, number_of_units)
    @type = type
    @number_of_units = number_of_units
  end 
 
  def take_a_unit
    if @number_of_units > 0
      @number_of_units = @number_of_units - 1
    else
      puts "Units ended."
    end  
  end 
  
  def occupied_units
    @total_units - @number_of_units
  end
 
end  





  