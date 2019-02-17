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

ActiveRecord::Schema.define(version: 2019_01_05_075823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allcards", force: :cascade do |t|
    t.integer "key"
    t.string "name"
    t.string "title"
    t.string "role"
    t.string "rarity"
    t.string "cardtype"
    t.string "effect"
    t.integer "attack"
    t.integer "magic"
    t.integer "defense"
    t.string "description"
    t.string "image"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "role"
    t.string "description"
    t.string "image"
    t.string "rarity"
    t.string "cardtype"
    t.string "effect"
    t.integer "attack"
    t.integer "magic"
    t.integer "defense"
    t.integer "quantity"
    t.integer "key"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deckcards", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.string "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "password_digest"
    t.string "level"
    t.string "background"
    t.string "preduel"
    t.integer "dialogue"
    t.integer "gold"
    t.integer "defeated_id"
    t.boolean "computer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
