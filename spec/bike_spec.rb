require 'bike'

describe Bike do
  it 'responds to method working?' do
    expect(subject).to respond_to(:working?)
  end

  it 'is the bike working?' do
    expect(subject.working?).to eq(true)
  end
end
