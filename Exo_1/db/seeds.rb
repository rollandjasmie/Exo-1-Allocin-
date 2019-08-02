# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
a= ["action", "horreur", "comédie", "drame"]


100.times do |index|
	e=sprintf("%.2f", rand(0.0..5.0))
	Movie.create!(name:Faker::Book.title, 
  				  year:Faker::Number.within(range:1900 .. 2020),           
				  genre: a[rand(4)],
				  synopsis:Faker::Lorem.sentence(word_count: 10),
				  director:Faker::Book.author,
                  allocine_rating: e,
                  my_rating:nil,
				  already_seen:false
		)
end