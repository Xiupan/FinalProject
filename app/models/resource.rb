class Resource < ApplicationRecord
  has_and_belongs_to_many :empires
  has_many :improvements
  has_many :ship_designs
  
end
