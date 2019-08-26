# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0..9).each do |num|
  User.create(email: "neha_#{num}@abc.com", name: 'Neha', phone_number: "99999999#{num}" )
end

(0..5).each do
  ParkingSpot.create(line_1: 'Lake Town Society', line_2: 'Bibwewadi', pincode: '411037', city: 'Pune', state: 'Maharashtra')
end

