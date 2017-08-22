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

require 'test_helper'

class ImprovementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
