class Station

  attr_accessor :name, :list_trains 

  def initialize(name)
    @name = name
    @list_trains = {
      cargo: [],
      pass: []
    }
  end  
 
  def trains_type
    cargo_train = @list_trains[:cargo].count
    pass_train = @list_trains[:pass].count

    puts "Station: #{@name}, cargo trains: #{cargo_train}, passenger trains: #{pass_train}"    
  end

  def take_a_train(train)
    @list_trains[train.type.to_sym].push(train)
  end 

  def send_train(train)
    @list_trains[train.type.to_sym].delete(train)
  end   
  
end 