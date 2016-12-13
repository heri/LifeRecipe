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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
