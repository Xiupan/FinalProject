# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# https://eddb.io/archive/v5/systems_populated.json

require './app/models/system.rb'

# puts $systemNameArray

# change 'required' attributes to 'not required' like 'Empires'
$systemNameArray.each do |name|
  # System.find_or_create_by(name: name)
  System.where(name: name).first_or_create!
end
