require_relative "../lib/boris_bikes"

describe DockingStation do
  it "expect release of bike" do
    is_expected.to respond_to(:release_bike)
  end
  it "test bike is returned from release bike if bikes exist" do
    dock = DockingStation.new
    bike = Bike.new
    dock.dock_bike(bike)
    expect(dock.release_bike.working?).to eq (true)
  end
  it "expect to respond to docking of bike with 1 argument" do
    is_expected.to respond_to(:dock_bike).with(1).argument
  end
  it "expect fail if no bike to release from new Docking Station" do
    expect {DockingStation.new.release_bike}.to raise_error
  end
end
