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

ActiveRecord::Schema.define(version: 20170612045217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "location_id"
    t.bigint "user_id"
    t.boolean "completed", default: false
    t.index ["location_id"], name: "index_jobs_on_location_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "lat"
    t.float "long"
  end

  create_table "season_locations", force: :cascade do |t|
    t.bigint "season_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_season_locations_on_location_id"
    t.index ["season_id"], name: "index_season_locations_on_season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.string "year"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.integer "role", default: 0
  end

  add_foreign_key "season_locations", "locations"
  add_foreign_key "season_locations", "seasons"
end
