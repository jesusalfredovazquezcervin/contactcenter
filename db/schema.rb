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

ActiveRecord::Schema.define(version: 20160622185511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "internal"
    t.string   "external"
    t.string   "suburb"
    t.string   "municipality"
    t.string   "location"
    t.integer  "state_id"
    t.string   "postalCode"
    t.string   "city"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_id"], name: "index_addresses_on_contact_id", using: :btree
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "tradeName"
    t.string   "businessName"
    t.string   "rfc"
    t.string   "comercialBusiness"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employees"
    t.integer  "contact_id"
    t.integer  "schedule_id"
    t.integer  "address_id"
  end

  add_index "companies", ["address_id"], name: "index_companies_on_address_id", using: :btree
  add_index "companies", ["contact_id"], name: "index_companies_on_contact_id", using: :btree
  add_index "companies", ["schedule_id"], name: "index_companies_on_schedule_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.string   "telephone"
    t.string   "cellphone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id", using: :btree

  create_table "schedules", force: true do |t|
    t.time     "mondayStart"
    t.time     "mondayEnd"
    t.time     "tuesdayStart"
    t.time     "tuesdayEnd"
    t.time     "wednesdayStart"
    t.time     "wednesdayEnd"
    t.time     "thursdayStart"
    t.time     "thursdayEnd"
    t.time     "saturdayStart"
    t.time     "saturdayEnd"
    t.time     "sundayStart"
    t.time     "sundayEnd"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "company_id"
    t.time     "fridayStart"
    t.time     "fridayEnd"
  end

  add_index "schedules", ["company_id"], name: "index_schedules_on_company_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.date     "dateEnd"
    t.boolean  "gender"
    t.time     "deadLine"
    t.datetime "birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
