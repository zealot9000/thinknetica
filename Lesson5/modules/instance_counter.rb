 module InstanceCounter
  def self.included(base)
      base.extend ClassMethods
      base.send :include, InstanceMethods
  end

  module ClassMethods
    attr_accessor :instance_count 
  end

  module InstanceMethods
    private
    def register_instance
      self.class.instance_count ||= 0 
      self.class.instance_count += 1
    end
  end     
end  
  