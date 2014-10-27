# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "seed data test!"
#
# Faker::Name.name
# Faker::Internet.email
# Faker::Date.between(2.days.ago, Date.today)
puts "#{Faker::Name.name } phone:#{Faker::PhoneNumber.phone_number }"

puts "#{Faker::Name.name } address:#{Faker::Address.street_address }"

puts "#{Faker::Name.name } company:#{Faker::Company.name} #{Faker::Company.logo}"
