# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Resource < ApplicationRecord
  has_and_belongs_to_many :empires
  has_many :improvements
  has_many :ship_designs
  
end
