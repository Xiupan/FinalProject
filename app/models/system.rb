class System < ApplicationRecord
  belongs_to :empire
  has_and_belongs_to_many :improvements
end
