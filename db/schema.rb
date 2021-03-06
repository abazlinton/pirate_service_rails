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

ActiveRecord::Schema.define(version: 2019_07_16_140313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pirates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "join_date"
    t.bigint "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_pirates_on_ship_id"
  end

  create_table "pirates_raids", force: :cascade do |t|
    t.bigint "pirate_id"
    t.bigint "raid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pirate_id"], name: "index_pirates_raids_on_pirate_id"
    t.index ["raid_id"], name: "index_pirates_raids_on_raid_id"
  end

  create_table "raids", force: :cascade do |t|
    t.string "location"
    t.integer "loot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pirates", "ships"
  add_foreign_key "pirates_raids", "pirates"
  add_foreign_key "pirates_raids", "raids"
end
