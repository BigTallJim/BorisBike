require "boris_bikes"

describe Bike do
  it "expect check of is bike working" do
    is_expected.to respond_to(:working)
  end
  it "bike returns working" do
    expect(Bike.new.working).to eq (true)
  end
  it "bike is being set to broken" do
    bike_1 = Bike.new
    expect(bike_1.set_to_broken).to eq(false)
  end
  it "Don't release a bike if it's broken" do
    dock = double(:dock)
    subject.set_to_broken
    dock.dock_bike(subject)
    expect {dock.release_bike}.to raise_error("No working boris bikes")
  end
end
