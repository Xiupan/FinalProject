# https://eddb.io/archive/v5/systems_populated.json
# System.destroy_all
# Empire.destroy_all
# EmpireTrait.destroy_all
# User.destroy_all

User.create!({
  username: "default user",
  password: "poop",
  password_confirmation: "poop"
})

User.create!({
  username: "test1",
  password: "poop",
  password_confirmation: "poop"
})

# Creates one default empire than belongs to admin or the first created user
Empire.where(name: "default empire", description: "Default Empire.", user_id: 1).first_or_create!
Empire.where(name: "test empire 1", description: "Test Empire.", user_id: 1).first_or_create!

# Creates one default EmpireTrait
EmpireTrait.where(name: "default trait", description: "Default trait that does nothing.").first_or_create!

# Seeds DB with Faker star system names
# TODO: Try and make star names unique? Probably validation to be added to the DB schema itself
50.times do
  System.create!(
    name: Faker::Space.star,
    empire_id: 1
  )
end

# Seeds DB with one default Resource, Tech, Improvement, Fleet, and ShipDesign
Resource.where(name: "default resource", description: "Default resource that does nothing.").first_or_create!

Technology.where(name: "default tech", description: "Default tech that does nothing.").first_or_create!

Improvement.where(name: "default improvement", description: "Default improvement that does nothing.", technology_id: 1, resource_id: 1).first_or_create!

Fleet.where(name: "default fleet", empire_id: 1).first_or_create!

ShipDesign.where(name: "default design", description: "Default ship design with nothing on it.", empire_id: 1, fleet_id: 1, technology_id: 1, resource_id: 1).first_or_create!

# Seeds the DB with 20000+ system names
# require './app/models/system.rb'
# System.destroy_all
# $systemNameArray.each do |name|
#   System.where(name: name, empire_id: 1).first_or_create!
# end
