require 'bike'

describe Bike do
  bike = Bike.new

  it 'responds to method working?' do
    expect(bike).to respond_to(:working?)
  end

  it 'is the bike working?' do
    expect(bike.working?).to eq(true)
  end
end
