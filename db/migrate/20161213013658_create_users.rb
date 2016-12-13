class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :active
      t.string :email
      t.datetime :confirmation_sent_at
      t.datetime :confirmed_at
      t.string :confirmation_token
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.string :password_salt
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.boolean :image_processing
      t.string :authentication_token
      t.string :facebook_id
      t.string :locale
      t.string :main_language

      t.timestamps null: false
    end
  end
end
