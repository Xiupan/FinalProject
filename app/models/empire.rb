class Empire < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :empire_traits
  has_and_belongs_to_many :technologies
  has_and_belongs_to_many :resources
  has_many :ship_designs
  has_many :systems
  has_many :fleets
end
