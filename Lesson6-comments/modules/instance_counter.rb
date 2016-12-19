module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end

  module ClassMethods
    attr_reader :instances

  private

    def count
      @instances ||= 0 
      @instances += 1
    end  
  end

  module InstanceMethods
  private
    def register_instance
      self.class.send :count
    end
  end     
end  
