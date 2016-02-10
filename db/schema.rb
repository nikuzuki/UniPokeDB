# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160210203506) do

  create_table "pokemon_wazas", force: :cascade do |t|
    t.integer  "pokemon_id"
    t.integer  "waza_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_pokemon_wazas_on_pokemon_id"
    t.index ["waza_id"], name: "index_pokemon_wazas_on_waza_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer  "all_world_number"
    t.string   "name"
    t.integer  "type_1"
    t.integer  "type_2"
    t.integer  "race_h"
    t.integer  "race_a"
    t.integer  "race_b"
    t.integer  "race_c"
    t.integer  "race_d"
    t.integer  "race_s"
    t.string   "ability_1"
    t.string   "ability_2"
    t.string   "ability_dream"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wazas", force: :cascade do |t|
    t.integer  "type_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
