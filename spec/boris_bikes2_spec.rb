require "boris_bikes"

describe Bike do
  it "expect check of is bike working" do
    is_expected.to respond_to(:working)
  end
  it "bike returns working" do
    expect(Bike.new.working).to eq (true)
  end
end
