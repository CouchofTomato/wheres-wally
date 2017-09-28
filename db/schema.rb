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

ActiveRecord::Schema.define(version: 20170928135232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos_characters", force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "character_id"
    t.integer "top_x"
    t.integer "top_y"
    t.integer "bottom_x"
    t.integer "bottom_y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_photos_characters_on_character_id"
    t.index ["photo_id"], name: "index_photos_characters_on_photo_id"
  end

  create_table "scores", force: :cascade do |t|
    t.bigint "photo_id"
    t.string "name"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_scores_on_photo_id"
  end

  add_foreign_key "photos_characters", "characters"
  add_foreign_key "photos_characters", "photos"
  add_foreign_key "scores", "photos"
end
