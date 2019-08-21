require_relative "../lib/boris_bikes"



describe Bike do
  it "expect check of is bike working" do
    is_expected.to respond_to(:working?)
  end
end
