require_relative './bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise 'No bikes available'
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    @bikes << bike
  end

  def display_bikes
    @bikes
  end
end
