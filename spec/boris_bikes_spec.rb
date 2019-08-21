require_relative "../lib/boris_bikes"

describe DockingStation do
  it "expect release of bike" do
    is_expected.to respond_to(:release_bike)
  end
end
