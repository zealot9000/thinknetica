module Company
  def set_company(name)
    @company = name
  end  
end  

module InstanceCounter
  
  def self.instances
    
    attr_accessor :instance_count
    
    instance_count
  end 
  
  def register_instance
    self.class.instance_count = 0 if self.class.instance_count.nil?
    self.class.instance_count += 1
  end  
end  
  