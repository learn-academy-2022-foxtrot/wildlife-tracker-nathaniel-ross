require 'rails_helper'

RSpec.describe Animal, type: :model do

  it "is valid with valid attributes" do
    animal = Animal.create(common_name: 'test', scientific_binomial:'test word')
    expect(animal).to be_valid
  end
  
  it "is not valid without a common name" do
    animal = Animal.create(common_name: nil, scientific_binomial: 'test')
    expect(animal.errors[:common_name]).to_not be_empty
  end

  it "is not valid without a scientific binomial" do
    animal = Animal.create(common_name: 'dawg', scientific_binomial: nil)
    expect(animal.errors[:scientific_binomial]).to_not be_empty
  end
  
  it "is not valid if common name matches scientific binomial" do
    animal = Animal.create(common_name: 'new animal', scientific_binomial: 'new animal')
    expect(animal.errors[:common_name]).to_not be_empty
  end

  it "is not valid if common name is not unique" do
    animal = Animal.create(common_name: 'Pomeranian', scientific_binomial: 'Pomerinain Onionious')
    animal = Animal.create(common_name: 'Pomeranian', scientific_binomial: 'Pom Pom')
    expect(animal.errors[:common_name]).to_not be_empty
  end

  it "is not valid if scientific binomial is not unique" do
    animal = Animal.create(common_name: 'Pom', scientific_binomial: 'Pom Pom')
    animal = Animal.create(common_name: 'Pomeranian', scientific_binomial: 'Pom Pom')
    expect(animal.errors[:scientific_binomial]).to_not be_empty
  end

end