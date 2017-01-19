require_relative 'modules/company'

class Carriage

  include Company  

  attr_accessor :company
  attr_reader :type 

  def initialize(type)
    @type = type
  end   
end  





  