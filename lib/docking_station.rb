require_relative './bike.rb'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def full?
    @bikes.size >= @capacity ? true : false
  end

  def empty?
    @bikes.size == 0 ? true : false
  end

  def release
    raise 'No bikes available' if self.empty?
    Bike.new
  end

  def dock(bike)
    raise 'Station at capacity' if self.full?
    @bikes << bike
  end

  def display
    @bikes
  end
end
