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

ActiveRecord::Schema.define(version: 20141217040236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: true do |t|
    t.date     "appointment_date"
    t.time     "appointment_time"
    t.string   "description"
    t.float    "appt_cost"
    t.integer  "pet_id"
    t.integer  "veterinarian_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "conditions", force: true do |t|
    t.string   "name"
    t.string   "link_url"
    t.date     "diagnosis_date"
    t.string   "description"
    t.boolean  "ongoing"
    t.integer  "pet_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "entries", force: true do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: true do |t|
    t.float    "amount"
    t.string   "category"
    t.string   "description"
    t.string   "vendor"
    t.date     "date_incurred"
    t.date     "date_paid"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lengths", force: true do |t|
    t.float    "length_amt"
    t.string   "length_units"
    t.date     "date_measured"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "medications", force: true do |t|
    t.string   "name"
    t.string   "rx_num"
    t.float    "dose_amt"
    t.string   "dose_units"
    t.string   "dose_frequency"
    t.float    "med_cost"
    t.string   "description"
    t.date     "date_prescribed"
    t.integer  "pet_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "breed"
    t.date     "birthdate"
    t.string   "sex"
    t.date     "adoption_date"
    t.string   "microchip_number"
    t.string   "picture_url"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "supplies", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "vendor"
    t.float    "supply_cost"
    t.date     "purchase_date"
    t.date     "paid_date"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vaccinations", force: true do |t|
    t.string   "name"
    t.date     "date_given"
    t.date     "next_due"
    t.integer  "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "weights", force: true do |t|
    t.float    "weight_amt"
    t.string   "weight_units"
    t.date     "date_measured"
    t.integer  "pet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
