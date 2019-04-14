require 'rails_helper'

RSpec.describe Network, type: :model do
  
  it "is valid with valid attributes" do
    expect(build(:network)).to be_valid
  end

  it "is not valid without a network type" do
    expect(build(:network, network_type: nil)).to_not be_valid
  end

  it "is not valid without an IP address or subnet" do
    expect(build(:network, ip_subnet: nil)).to_not be_valid
  end
end
