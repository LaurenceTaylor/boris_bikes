require 'docking_station'

describe DockingStation do
  it 'should responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'should release a bike if bikes are available' do
      station = DockingStation.new
      station.dock_bike(Bike.new)
      expect(station.release_bike).to be_an_instance_of(Bike)
    end

    it 'should raise an error when no bikes are stored' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'should respond to dock_bike' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it 'should be able to dock a bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.bikes.include?(bike)).to eq(true)
  end

  it 'should display available bikes' do
    expect(subject).to respond_to(:display_bikes)
  end
end
