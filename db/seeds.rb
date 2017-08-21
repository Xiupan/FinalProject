# https://eddb.io/archive/v5/systems_populated.json
System.destroy_all
Empire.destroy_all
EmpireTrait.destroy_all
User.destroy_all

# User.where(username: "default user", password_digest: "poop").first_or_create!
User.create!({
  username: "default user",
  password: "poop",
  password_confirmation: "poop"
  })

# Creates one default empire than belongs to admin or the first created user
Empire.where(name: "default empire", description: "Default Empire.", user_id: 1).first_or_create!

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

# Seeds the DB with 20000+ system names
# require './app/models/system.rb'
# System.destroy_all
# $systemNameArray.each do |name|
#   System.where(name: name, empire_id: 1).first_or_create!
# end
