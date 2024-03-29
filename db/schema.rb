# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161213034903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favoriter_relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "step_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "title"
    t.string   "step_type"
    t.string   "quantity"
    t.text     "description"
    t.integer  "parent_id"
    t.time     "duration"
    t.integer  "speed"
    t.string   "effort"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "position"
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "active"
    t.string   "email"
    t.datetime "confirmation_sent_at"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "password_salt"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "image_processing"
    t.string   "authentication_token"
    t.string   "facebook_id"
    t.string   "locale"
    t.string   "main_language"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
