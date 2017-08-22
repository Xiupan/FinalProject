# == Schema Information
#
# Table name: improvements
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  base_time     :decimal(, )
#  technology_id :integer
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Improvement < ApplicationRecord
  belongs_to :technology
  belongs_to :resource
  has_and_belongs_to_many :systems
end
