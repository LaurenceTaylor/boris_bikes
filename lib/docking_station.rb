require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
  end

  def display_bikes
    @bikes
  end
end
