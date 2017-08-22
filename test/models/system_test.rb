# == Schema Information
#
# Table name: systems
#
#  id          :integer          not null, primary key
#  name        :string
#  explored    :boolean          default(FALSE)
#  colonized   :boolean          default(FALSE)
#  description :text
#  empire_id   :integer          default(1)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SystemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
