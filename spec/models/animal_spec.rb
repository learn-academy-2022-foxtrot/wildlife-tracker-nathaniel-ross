require 'rails_helper'

RSpec.describe Animal, type: :model do

  it "is valid with valid attributes" do
    animal = Animal.create(common_name: 'Dragon', scientific_binomial:'Dragonius')
    expect(animal).to be_valid
  end
  
  
  # it "is not valid without a common name" do
  #   animal = Animal.create(scientific_binomial: 'Dragonius Maximus')
  #   expect(animal.errors[:common_name]).to_not be_empty
  # end
  
  
  
  end
