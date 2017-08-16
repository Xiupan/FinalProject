class System < ApplicationRecord
  # require 'json'
  # require 'httparty'
  # require './lib/seeds/systems.rb'
  require 'csv'

  belongs_to :empire
  has_and_belongs_to_many :improvements

  # response = HTTParty.get('https://eddb.io/archive/v5/systems_populated.json')
  # json = JSON.parse(response.body)
  # File.open('./lib/seeds/systems.csv', 'w') do |f|
  #   json.each do |j|
  #     f.write(j['name'] + ",")
  #   end
  # end

  CSV.read('./lib/seeds/systems.csv', headers: false).each do |name|
    $systemNameArray = name
  end
end
