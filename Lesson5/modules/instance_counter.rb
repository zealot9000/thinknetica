 module InstanceCounter
  def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
  end

  module ClassMethods
    @@instance_count = 0

    def instances
      @@instance_count
    end
      
    private

    def count 
      @@instance_count += 1 
    end  
  end

  module InstanceMethods
    private
    def register_instance
      self.class.send :count
    end
  end     
end  
  