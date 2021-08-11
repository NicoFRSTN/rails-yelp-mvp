# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chez_leo = { name: "Chez Leo", address: "7 Boundary St, London E2 7JE", phone_number: "06 99 99 99 99", category: "japanese" }
miaou_miaou =  { name: "Miaou miaou", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 88 88 88 88", category: "belgian" }
giga_kebab = { name: "Giga Kebab", address: "rue de Provence", phone_number: "06 99 77 77 77", category: "french" }
super_kebab = { name: "Super Kebab", address: "rue de Lyon", phone_number: "06 99 77 77 76", category: "italian" }
mega_kebab = { name: "mega Kebab", address: "rue de Toulouse", phone_number: "06 99 77 77 78", category: "chinese" }
[chez_leo, miaou_miaou, giga_kebab, super_kebab, mega_kebab].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
