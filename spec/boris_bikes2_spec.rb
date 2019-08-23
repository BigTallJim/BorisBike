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

end
