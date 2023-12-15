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

ActiveRecord::Schema[7.1].define(version: 2023_12_15_125002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "provider"
    t.integer "balance"
    t.string "owner"
    t.string "number"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statics", force: :cascade do |t|
    t.string "home"
    t.string "disclaimer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_cards", force: :cascade do |t|
    t.string "provider"
    t.integer "balance"
    t.string "owner"
    t.string "number"
    t.integer "status"
    t.bigint "card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_sub_cards_on_card_id"
  end

  add_foreign_key "sub_cards", "cards"
end
