class ShipDesign < ApplicationRecord
  belongs_to :empire
  belongs_to :fleet
  belongs_to :technology
  belongs_to :resource
end
