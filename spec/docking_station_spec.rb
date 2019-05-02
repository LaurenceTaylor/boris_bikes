require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new

   it 'responds to release_bike' do
     expect(docking_station).to respond_to(:release_bike)
   end

   it 'release a bike' do
     expect(docking_station.release_bike).to be_an_instance_of(Bike)
   end

   it 'responds to dock_bike' do
     expect(docking_station).to respond_to(:dock_bike).with(1).argument
   end

   bike = docking_station.release_bike
   list_of_bikes = docking_station.bikes
   docking_station.dock_bike(bike)

   it 'dock a bike' do
     expect(list_of_bikes.include?(bike)).to eq(true)
   end

   it 'display available bikes' do
    expect(docking_station).to respond_to(:display_bikes)
   end

#   empty_docking_station = DockingStation.new
#   it 'show error when no bikes' do
#     expect { empty_docking_station.release_bike }.to raise_error if empty_docking_station.bikes.empty?
#   end
end
