class Animal < ApplicationRecord
    has_many :sites
    has_many :sightings, through: :sites
end
