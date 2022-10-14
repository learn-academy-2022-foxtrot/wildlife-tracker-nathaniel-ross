class Animal < ApplicationRecord
    has_many :sites
    has_many :sightings, through: :sites

    validates :common_name, :scientific_binomial, presence: true
    validates :common_name, comparison: {other_than: :scientific_binomial}
    validates :common_name, :scientific_binomial, uniqueness: true
end
