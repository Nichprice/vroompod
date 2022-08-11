# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_10_154041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.string "insta_pic"
    t.string "applepods"
    t.string "spotify"
    t.string "blurb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.integer "episode_id"
    t.integer "round"
    t.string "driver_standings_first"
    t.string "driver_standings_second"
    t.string "driver_standings_third"
    t.string "constructor_standings_first"
    t.string "constructor_standings_second"
    t.string "constructor_standings_third"
    t.string "results_first"
    t.string "results_second"
    t.string "results_third"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "episode_id"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
