require 'docking_station'
describe DockingStation do

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bike }

  it 'docks something' do
    bike = Bike.new
    # What is this test realy checking?
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    # What is line 17 doing?
    expect(subject.dock(bike)).to eq bike
    # or it shuld be...
    # expect(subject.release_bike).to eq bike
  end

  it 'raises an error when docking station can not accept more bikes' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) }.to raise_error 'docking station is full'
  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      # we have to dock a bike, so we are sure it is there, to then release it
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it { is_expected.to respond_to :release_bike }

    it 'returns a working bike' do
       bike = Bike.new
       subject.dock(bike)
       # What is the next line doing? How a method on another class (working?) can be seen?
       expect(subject.release_bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
