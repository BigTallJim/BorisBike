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
    expect {DockingStation.new.release_bike}.to raise_error("No bikes available")
  end
  it "test if docked bike is correctly retuned" do
    dock = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    dock.dock_bike(bike1)
    dock.dock_bike(bike2)
    expect(dock.release_bike).to eq (bike2)
    expect(dock.store).to eq ([bike1])


  end
end
