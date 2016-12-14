 module InstanceCounter
  def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
  end

  module ClassMethods
    attr_reader :instance_count

    private
    attr_writer :instance_count 

    def count
      instance_count ||= 0 
      instance_count += 0 
    end  
  end

  module InstanceMethods
    private
    def register_instance
      # self.class.instance_count ||= 0 
      # self.class.instance_count += 1

      self.class.send :count
    end
  end     
end  
  