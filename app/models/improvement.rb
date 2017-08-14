class Improvement < ApplicationRecord
  belongs_to :technology
  belongs_to :resource
  has_and_belongs_to_many :systems
end
