# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  active                 :boolean
#  email                  :string
#  confirmation_sent_at   :datetime
#  confirmed_at           :datetime
#  confirmation_token     :string
#  encrypted_password     :string
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  password_salt          :string
#  first_name             :string
#  last_name              :string
#  description            :text
#  image_file_name        :string
#  image_content_type     :string
#  image_file_size        :integer
#  image_updated_at       :datetime
#  image_processing       :boolean
#  authentication_token   :string
#  facebook_id            :string
#  locale                 :string
#  main_language          :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ActiveRecord::Base
  has_many :steps, -> { includes :category }, dependent: :destroy

  validates_length_of :first_name, :within => 2..255
  validates_length_of :last_name, :within => 2..255
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
  validates_presence_of    :password, :on=>:create
  validates_confirmation_of    :password, :on=>:create

  has_many :favoriter_relationships
  has_many :favorited_steps, through:  :favoriter_relationships, class_name: "Step", foreign_key:  "step_id"

  has_attached_file :image, :styles => {
                      :medium => "288x288#",
                      :small => "150x150#",
                      :thumbnail => "48x48#",
                      :original => "600x800>"},
                    :default_url => ActionController::Base.helpers.asset_path("/system/profile_image/:style/missing.png", :digest => true)
  # process_in_background :image

  validates_attachment_size :image, :less_than => 9.megabytes
  validates_attachment_content_type :image,
                                    :content_type => ["image/jpeg", "image/png", "image/gif",
                                      "image/pjpeg", "image/x-png"] #the two last types are sent by IE.
end
