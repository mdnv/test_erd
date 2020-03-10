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

ActiveRecord::Schema.define(version: 2020_03_10_034123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.bigint "syndication_id", null: false
    t.string "name"
    t.string "andress"
    t.string "phone"
    t.string "ceo_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["syndication_id"], name: "index_companies_on_syndication_id"
  end

  create_table "deparments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "syndication_id", null: false
    t.string "andress"
    t.string "website"
    t.bigint "profession_id", null: false
    t.float "training_allowance"
    t.integer "work_time"
    t.integer "over_time"
    t.integer "break_time"
    t.integer "work_day"
    t.integer "basic_salary"
    t.integer "actual_salary"
    t.integer "hourly_wage"
    t.integer "current_company"
    t.datetime "form_complete"
    t.integer "test_schedule"
    t.integer "test_way"
    t.integer "test_content"
    t.integer "test_place"
    t.integer "number_test"
    t.integer "gender"
    t.integer "age_range"
    t.integer "hight"
    t.integer "weight"
    t.integer "handedness"
    t.integer "marital_status"
    t.integer "blood_type"
    t.integer "educational_level"
    t.integer "smoke"
    t.integer "drink"
    t.integer "vision"
    t.integer "tatto"
    t.integer "workmanship"
    t.datetime "exit_date"
    t.datetime "contract_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_orders_on_company_id"
    t.index ["profession_id"], name: "index_orders_on_profession_id"
    t.index ["syndication_id"], name: "index_orders_on_syndication_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "bithday"
    t.string "bithplace"
    t.string "phone"
    t.bigint "deparment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deparment_id"], name: "index_staffs_on_deparment_id"
  end

  create_table "syndications", force: :cascade do |t|
    t.string "name"
    t.string "andress"
    t.string "phone"
    t.string "ceo_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "name_katakana"
    t.string "name_kanji"
    t.string "gender"
    t.datetime "bithday"
    t.string "phone"
    t.string "bithplace"
    t.string "andress"
    t.string "phone_ja"
    t.string "address_ja"
    t.bigint "order_id", null: false
    t.bigint "company_id", null: false
    t.datetime "matriculation_date"
    t.datetime "exit_date"
    t.datetime "entry_date"
    t.string "admission_day"
    t.string "training_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["order_id"], name: "index_users_on_order_id"
  end

  add_foreign_key "companies", "syndications"
  add_foreign_key "orders", "companies"
  add_foreign_key "orders", "professions"
  add_foreign_key "orders", "syndications"
  add_foreign_key "staffs", "deparments"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "orders"
end
