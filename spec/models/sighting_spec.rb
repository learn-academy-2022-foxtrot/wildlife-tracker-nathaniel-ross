require 'rails_helper'

RSpec.describe Sighting, type: :model do

  it "is valid with valid attributes" do
    sighting = Sighting.create(latitude: '42', longitude:'-154', date: '1994-10-15')
    expect(sighting).to be_valid
  end

  it "is not valid without latitude" do
    sighting = Sighting.create(latitude: nil, longitude:'-154', date: '1994-10-15')
    expect(sighting.errors[:latitude]).to_not be_empty
  end

  it "is not valid without longitude" do
    sighting = Sighting.create(latitude: '42', longitude: nil, date: '1994-10-15')
    expect(sighting.errors[:longitude]).to_not be_empty
  end

  it "is not valid without a date" do
    sighting = Sighting.create(latitude: '42', longitude:'-154', date: nil)
    expect(sighting.errors[:date]).to_not be_empty
  end

end