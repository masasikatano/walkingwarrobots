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

ActiveRecord::Schema.define(version: 20160607093847) do

  create_table "robot_posts", force: :cascade do |t|
    t.integer  "robot_id"
    t.float    "rating"
    t.text     "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "robots", force: :cascade do |t|
    t.string   "name"
    t.string   "namejp"
    t.integer  "required_level"
    t.integer  "price_ag"
    t.integer  "price_au"
    t.integer  "price_wsp"
    t.string   "robot_class"
    t.integer  "hp"
    t.integer  "hp_max"
    t.integer  "speed"
    t.integer  "speed_max"
    t.string   "slot"
    t.string   "slot1"
    t.string   "slot2"
    t.string   "slot3"
    t.string   "slot4"
    t.string   "ability"
    t.text     "note"
    t.float    "rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "weapon_posts", force: :cascade do |t|
    t.integer  "weapon_id"
    t.float    "rating"
    t.text     "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.string   "namejp"
    t.integer  "required_level"
    t.integer  "price_ag"
    t.integer  "price_au"
    t.integer  "price_wsp"
    t.string   "weapon_class"
    t.string   "weapon_type"
    t.integer  "damage"
    t.integer  "damage_max"
    t.integer  "hp"
    t.integer  "hp_max"
    t.string   "shooting_range"
    t.string   "rounds"
    t.float    "rps"
    t.float    "reload_sec"
    t.float    "whole_rounds_sec"
    t.float    "cycle_sec"
    t.float    "cycle_damage"
    t.float    "cycle_damage_max"
    t.float    "cycle_dps"
    t.float    "cycle_dps_max"
    t.text     "note"
    t.float    "rating"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
