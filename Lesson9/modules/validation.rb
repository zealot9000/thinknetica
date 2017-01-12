module Validation
  
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end
  
  module ClassMethods 
    def validate(attribute, type, option = nil)
      @check_array ||= []
      @check_array << { attribute: attribute, type: type, option: option }
    end
  end  
  
  module InstanceMethods
    def valid?
      validate!
      true
    rescue
      false
    end
  
  private
  
    def validate!
    end
    
    def presence
    end
    
    def format
    end
    
    def type
    end  
  end    
end    