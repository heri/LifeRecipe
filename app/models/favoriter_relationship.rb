class FavoriterRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :step

  validates :user_id,
            presence: true

end
