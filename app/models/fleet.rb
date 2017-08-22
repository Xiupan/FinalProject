# == Schema Information
#
# Table name: fleets
#
#  id         :integer          not null, primary key
#  name       :string
#  empire_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fleet < ApplicationRecord
  belongs_to :empire
  has_and_belongs_to_many :ship_designs
end
