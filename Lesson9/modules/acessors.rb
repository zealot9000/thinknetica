module Acessors
   
variable_history = []
   
  def attr_accessor_with_history(*attributes)
    attributes.each do |attribute|
      eval %{
        def #{attribute}
          @#{attribute}
        end 
        
        def #{attribute}=(nil)
          @#{attribute} = nil
          variable_history.push(@#{attribute})
        end
      }
    end  
  end   
  
  def strong_attr_acessor
  end  
end