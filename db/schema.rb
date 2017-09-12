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

ActiveRecord::Schema.define(version: 20170912155714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "EmpireTraits_Empires", id: false, force: :cascade do |t|
    t.bigint "Empire_id", null: false
    t.bigint "EmpireTrait_id", null: false
  end

  create_table "Empires_Resources", id: false, force: :cascade do |t|
    t.bigint "Empire_id", null: false
    t.bigint "Resource_id", null: false
  end

  create_table "Empires_Technologies", id: false, force: :cascade do |t|
    t.bigint "Empire_id", null: false
    t.bigint "Technology_id", null: false
  end

  create_table "Fleets_ShipDesigns", id: false, force: :cascade do |t|
    t.bigint "ShipDesign_id", null: false
    t.bigint "Fleet_id", null: false
  end

  create_table "Improvements_Systems", id: false, force: :cascade do |t|
    t.bigint "System_id", null: false
    t.bigint "Improvement_id", null: false
  end

  create_table "empire_traits", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "empire_modifier"
    t.bigint "modifier_amount"
  end

  create_table "empires", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "money", default: "0.0", null: false
    t.decimal "food", default: "0.0", null: false
    t.decimal "science", default: "0.0", null: false
    t.index ["user_id"], name: "index_empires_on_user_id"
  end

  create_table "fleets", force: :cascade do |t|
    t.string "name"
    t.bigint "empire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empire_id"], name: "index_fleets_on_empire_id"
  end

  create_table "improvements", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "base_time"
    t.bigint "technology_id"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_improvements_on_resource_id"
    t.index ["technology_id"], name: "index_improvements_on_technology_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_designs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "chassis"
    t.string "weapon1"
    t.string "weapon2"
    t.string "weapon3"
    t.string "bombs"
    t.string "armor"
    t.string "shields"
    t.string "engines"
    t.string "sensors"
    t.string "option1"
    t.string "option2"
    t.bigint "empire_id"
    t.bigint "fleet_id"
    t.bigint "technology_id"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empire_id"], name: "index_ship_designs_on_empire_id"
    t.index ["fleet_id"], name: "index_ship_designs_on_fleet_id"
    t.index ["resource_id"], name: "index_ship_designs_on_resource_id"
    t.index ["technology_id"], name: "index_ship_designs_on_technology_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.boolean "explored", default: false
    t.boolean "colonized", default: false
    t.text "description"
    t.bigint "empire_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empire_id"], name: "index_systems_on_empire_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "base_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tier", default: 1, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "empires", "users"
  add_foreign_key "fleets", "empires"
  add_foreign_key "improvements", "resources"
  add_foreign_key "improvements", "technologies"
  add_foreign_key "messages", "users"
  add_foreign_key "ship_designs", "empires"
  add_foreign_key "ship_designs", "fleets"
  add_foreign_key "ship_designs", "resources"
  add_foreign_key "ship_designs", "technologies"
  add_foreign_key "systems", "empires"
end
