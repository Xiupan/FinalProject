# == Schema Information
#
# Table name: technologies
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  base_time   :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Technology < ApplicationRecord
  has_and_belongs_to_many :empires
  has_many :improvements
  has_many :ship_designs
end
