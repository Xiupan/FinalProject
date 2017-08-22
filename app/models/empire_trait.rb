# == Schema Information
#
# Table name: empire_traits
#
#  id              :integer          not null, primary key
#  name            :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  empire_modifier :string
#  modifier_amount :integer
#

class EmpireTrait < ApplicationRecord
  has_and_belongs_to_many :empires
end
