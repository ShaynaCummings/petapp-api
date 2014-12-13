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

ActiveRecord::Schema.define(version: 20141212162628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: true do |t|
    t.datetime "appointment_date"
    t.string   "description"
    t.integer  "pet_id"
    t.integer  "veterinarian_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "conditions", force: true do |t|
    t.string   "name"
    t.string   "link_url"
    t.string   "description"
    t.integer  "pet_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "costs", force: true do |t|
    t.float    "amount"
    t.string   "category"
    t.string   "description"
    t.string   "vendor"
    t.datetime "date_incurred"
    t.datetime "date_paid"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "medications", force: true do |t|
    t.string   "name"
    t.string   "rx_num"
    t.float    "dose_amt"
    t.string   "dose_units"
    t.string   "description"
    t.string   "method"
    t.integer  "condition_id"
    t.integer  "pet_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "breed"
    t.integer  "age_years"
    t.integer  "age_months"
    t.string   "sex"
    t.string   "adoption_date"
    t.string   "picture_url"
    t.integer  "user_id"
    t.integer  "veterinarian_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: true do |t|
    t.string   "provider",                            null: false
    t.string   "uid",                    default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

  create_table "veterinarians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "practice_name"
    t.string   "phone_number"
    t.string   "email_address"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
