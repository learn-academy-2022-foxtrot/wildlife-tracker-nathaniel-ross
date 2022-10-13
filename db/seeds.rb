# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
animal_a = Animal.create(common_name: "Bird", scientific_binomial: "Birdius Birdulia")

sighting_a = Sighting.create(latitude: "40", longitude: "-73", date: "1999-05-05")

site_a = Site.create(animal: animal_a, sighting: sighting_a)