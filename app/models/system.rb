# == Schema Information
#
# Table name: systems
#
#  id          :integer          not null, primary key
#  name        :string
#  explored    :boolean          default(FALSE)
#  colonized   :boolean          default(FALSE)
#  description :text
#  empire_id   :integer          default(1)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

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
