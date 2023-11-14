# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"
count = 0
10.times do
  count += 1
  puts "#{count} Nombre de films"
  Article.create(title: Faker::JapaneseMedia::DragonBall.character, content: Faker::JapaneseMedia::DragonBall.planet)
end
p 'finish'
