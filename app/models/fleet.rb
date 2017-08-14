class Fleet < ApplicationRecord
  belongs_to :empire
  has_and_belongs_to_many :ship_designs
end
