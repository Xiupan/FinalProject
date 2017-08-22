# == Schema Information
#
# Table name: ship_designs
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  chassis       :string
#  weapon1       :string
#  weapon2       :string
#  weapon3       :string
#  bombs         :string
#  armor         :string
#  shields       :string
#  engines       :string
#  sensors       :string
#  option1       :string
#  option2       :string
#  empire_id     :integer
#  fleet_id      :integer
#  technology_id :integer
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ShipDesign < ApplicationRecord
  belongs_to :empire
  belongs_to :fleet
  belongs_to :technology
  belongs_to :resource
  has_and_belongs_to_many :fleets
end
