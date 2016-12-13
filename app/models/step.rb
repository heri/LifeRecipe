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

class Step < ActiveRecord::Base
  acts_as_tree order: "position"

  belongs_to :recipe
  acts_as_list scope: :recipe
end
