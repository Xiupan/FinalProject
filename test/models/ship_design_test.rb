# == Schema Information
#
# Table name: ship_designs
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  chassis       :string
#  weapon1       :string
#  weapon2       :string
#  weapon3       :string
#  bombs         :string
#  armor         :string
#  shields       :string
#  engines       :string
#  sensors       :string
#  option1       :string
#  option2       :string
#  empire_id     :integer
#  fleet_id      :integer
#  technology_id :integer
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ShipDesignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
