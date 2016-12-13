class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :steps, -> { order(position: :as)}

  validates_presence_of :user_id

end
