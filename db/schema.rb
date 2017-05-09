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

ActiveRecord::Schema.define(version: 20170509131525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "costs", force: :cascade do |t|
    t.string "submitter"
    t.date "expense_date", null: false
    t.integer "level1_id", null: false
    t.integer "level2_id", null: false
    t.integer "level3_id", null: false
    t.float "amount", null: false
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.boolean "onsite", default: false
    t.integer "number_of_people"
    t.string "people_names"
  end

  create_table "level1s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level2s", force: :cascade do |t|
    t.string "name"
    t.integer "level1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level3s", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "level2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "cost_id"
    t.string "name"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "temp"
  end

end
