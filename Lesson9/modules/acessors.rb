module Accessors   
   
  def attr_accessor_with_history(*attributes)
    attributes.each do |attribute|
      var_name = "@#{attribute}".to_sym
      define_method(attribute) { instance_variable_get(var_name) }
      
      define_method("#{attribute}=".to_sym) do |value|
        instance_variable_set(var_name, value)  
        @history_array ||= {}
        @history_array[var_name] ||= []
        @history_array[var_name] << value
      end  

      define_method("#{attribute}_history") {@history_array[var_name]}
    end
  end     
  
  def strong_attr_accessor(attribute, type)
    var_name = "@#{attribute}".to_sym
    define_method(attribute) { instance_variable_get(var_name) }

    define_method("#{attribute}=".to_sym) do |value|
      if value.class == type
        instance_variable_set(var_name, value)
      else
        raise "Invalid attribute class."
      end  
    end          
  end  
end



class Test
  extend Accessors

  attr_accessor_with_history :my_attr, :a, :b

end