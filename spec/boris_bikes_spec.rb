require_relative "../lib/boris_bikes"

describe DockingStation do
  it "expect release of bike" do
    is_expected.to respond_to(:release_bike)
  end
  it "test bike is returned from release bike" do
    expect(DockingStation.new.release_bike.working?).to eq (true)
  end
  it "expect to respond to docking of bike with 1 argument" do
    is_expected.to respond_to(:dock_bike).with(1).argument
  end

end
