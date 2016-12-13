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
  belongs_to :user
  # has_many :received_testimonials, through: :provider, class_name: "Testimonials"
  # has_many :conversations

  belongs_to :category

  validates_presence_of :user_id
end
