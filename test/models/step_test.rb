# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  title       :string
#  step_type   :string
#  quantity    :string
#  description :text
#  parent_id   :integer
#  duration    :time
#  speed       :integer
#  effort      :string
#  notes       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#

require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
