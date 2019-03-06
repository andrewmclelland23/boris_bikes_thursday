require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "returns a bike object when release_bike method is called" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.is_a?(Bike)).to eq true
  end
  it "returns a bike object that is working when release_bike method called" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it "returns a bike when the dock method is called with a bike object argument" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

  # it "I can see a list of bikes in the docking station" do
  #   docking_station = DockingStation.new
  #   docking_station.dock(Bike.new)
  #   expect{docking_station.see_bikes}.to output("Bike 1").to_stdout
  # end
