class Player
  attr_accessor :name, :number, :position, :costs
  def initialize(name, number, position, costs)
    @name = name
    @number = number
    @position = position
    @costs = costs
  end
  def about
    "This is #{@name} '#{@number}', plays in the #{@position} position costs $#{@costs}.00"
  end
end
