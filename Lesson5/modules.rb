# module Company
#   def set_company(name)
#     @company = name
#   end  
# end  


module InstanceCounter
  def self.included(base)
      base.extend ClassMethods
      base.send :include, InstanceMethods
  end

  module ClassMethods
    attr_accessor :instance_count
    
    def instances
      instance_count
    end 
  end

  module InstanceMethods
    def register_instance
      self.class.instance_count = 0 if self.class.instance_count.nil?
      self.class.instance_count += 1
    end
  end    
end  
  