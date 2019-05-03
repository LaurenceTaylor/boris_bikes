require 'docking_station'

describe DockingStation do
  describe '#release' do
    it 'should release a bike if bikes are available' do
      subject.dock(Bike.new)
      expect(subject.release).to be_an_instance_of(Bike)
    end

    it 'should raise an error when no bikes are stored' do
      expect { subject.release }.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do
    it 'should dock a bike if there is space' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes.include?(bike)).to eq(true)
    end

    it 'should raise an error when the station is at capacity' do
      dock_process = lambda { subject.dock(Bike.new) }
      subject.capacity.times { dock_process.call }
      expect { dock_process.call }.to raise_error 'Station at capacity'
    end
  end

  it 'should display available bikes' do
    expect(subject.display).to eq (subject.bikes)
  end
end
