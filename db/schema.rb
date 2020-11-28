# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_28_170427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "policies", force: :cascade do |t|
    t.string "name", null: false
    t.text "body", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "text_one", null: false
    t.string "url", null: false
    t.text "text_two"
    t.text "text_three"
    t.text "text_four"
    t.text "text_five"
    t.text "text_six"
  end

  create_table "socials", force: :cascade do |t|
    t.string "twitter", null: false
    t.string "tumblr", null: false
    t.string "tiktok", null: false
    t.string "instagram", null: false
    t.string "facebook", null: false
    t.string "youtube", null: false
    t.string "reddit", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.text "text", null: false
  end

end
