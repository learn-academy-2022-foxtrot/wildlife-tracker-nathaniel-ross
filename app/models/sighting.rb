class Sighting < ApplicationRecord
    has_many :sites
    has_many :animals, through: :sites
end
