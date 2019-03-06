require './lib/docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "returns a bike object when release_bike method is called" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.is_a?(Bike)).to eq true 
  end
end
