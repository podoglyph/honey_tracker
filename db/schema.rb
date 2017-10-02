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

ActiveRecord::Schema.define(version: 20171002023548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forages", force: :cascade do |t|
    t.string "forage_type"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_name"
    t.date "start_date"
    t.date "end_date"
  end

  create_table "location_forages", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "forage_id"
    t.index ["forage_id"], name: "index_location_forages_on_forage_id"
    t.index ["location_id"], name: "index_location_forages_on_location_id"
  end

  create_table "location_jobs", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "job_id"
    t.boolean "completed", default: false
    t.index ["job_id"], name: "index_location_jobs_on_job_id"
    t.index ["location_id"], name: "index_location_jobs_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "lat"
    t.float "long"
  end

  create_table "season_locations", force: :cascade do |t|
    t.bigint "season_id"
    t.bigint "location_id"
    t.integer "num_hives"
    t.integer "num_supers"
    t.integer "num_dead"
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

  add_foreign_key "location_forages", "forages"
  add_foreign_key "location_forages", "locations"
  add_foreign_key "location_jobs", "jobs"
  add_foreign_key "location_jobs", "locations"
  add_foreign_key "season_locations", "locations"
  add_foreign_key "season_locations", "seasons"
end
