require 'bike'

describe Bike do
  it 'should tell us if the bike is working?' do
    expect(subject.working?).to eq(true)
  end
end
