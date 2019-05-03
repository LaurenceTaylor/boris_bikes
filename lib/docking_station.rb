require_relative './bike.rb'

class DockingStation

  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = 12
  end

  def release
    raise 'No bikes available' if @bikes.empty?
    Bike.new
  end

  def dock(bike)
    raise 'Station at capacity' if @bikes.size >= @capacity
    @bikes << bike
  end

  def display
    puts @bikes
    @bikes
  end
end
