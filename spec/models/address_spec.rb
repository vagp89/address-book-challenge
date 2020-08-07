require 'rails_helper'

RSpec.describe Address, type: :model do
  it "ensure address presence" do
    address = Address.new(nil)
    expect(address).to_not be_valid

  end
  it "ensure latitude presence" do
    address = Address.new(address:'lang').save
    expect(address).to eq(false)
  end

  it "ensure longitude presence" do
    address = Address.new(latitude:'lat').save
    expect(address).to eq(false)
  end
end



