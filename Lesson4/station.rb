class Station

  attr_accessor :name, :trains 

  def initialize(name)
    @name = name
    @trains = {
      cargo: [],
      pass: []
    }
  end  
 
  def trains_type
    cargo_train = @trains[:cargo].count
    pass_train = @trains[:pass].count

    puts "Station: #{@name}, cargo trains: #{cargo_train}, passenger trains: #{pass_train}"    
  end

  def take_a_train(train)
    @trains[train.type.to_sym].push(train)
  end 

  def send_train(train)
    @trains[train.type.to_sym].delete(train)
  end  
  
end 