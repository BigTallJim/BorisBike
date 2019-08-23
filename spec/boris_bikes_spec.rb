require "boris_bikes"

describe DockingStation do
  let(:bike) { double :bike }

  it "expect release of bike" do
    is_expected.to respond_to(:release_bike)
  end
  it "test bike is returned from release bike if bikes exist" do
    allow(bike).to receive(:is_working?).and_return(true)
    dock = DockingStation.new
    # bike = double(:bike)
    dock.dock_bike(bike)
    # bike = dock.release_bike
    expect(bike.is_working?).to eq (true)
  end
  it "expect to respond to docking of bike with 1 argument" do
    is_expected.to respond_to(:dock_bike).with(1).argument
  end
  it "expect fail if no bike to release from new Docking Station" do
    expect {DockingStation.new.release_bike}.to raise_error("No bikes available")
  end
  it "test if docked bike is correctly retuned" do
    allow(bike).to receive(:is_working?).and_return(true)
    dock = DockingStation.new
    bike1 = bike
    bike2 = bike
    dock.dock_bike(bike1)
    dock.dock_bike(bike2)
    expect(dock.release_bike).to eq (bike2)
    expect(dock.store).to eq ([bike1])
  end

  it "test if exception thrown when docking station contains more than 20 bikes" do
    dock = DockingStation.new
    $DEFAULT_CAPACITY.times {dock.dock_bike(bike)}
    expect {dock.dock_bike(bike)}.to raise_error("Docking Station Full")
  end

  it "Test create docking station when user sets size value of 30" do
    dock = DockingStation.new(30)
    expect($DEFAULT_CAPACITY).to eq (30)
  end

  it "Test create docking station defaulting size to 20" do
    dock = DockingStation.new
    expect($DEFAULT_CAPACITY).to eq (20)
  end

  it "Don't release a bike if it's broken" do
    allow(bike).to receive(:is_working?).and_return(false)
    subject.dock_bike(bike)
    expect {subject.release_bike}.to raise_error("No working boris bikes")
  end
end
