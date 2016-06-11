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
    t.integer  "robot_id",   limit: 4
    t.float    "rating",     limit: 24
    t.text     "post",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "robots", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "namejp",         limit: 255
    t.integer  "required_level", limit: 4
    t.integer  "price_ag",       limit: 4
    t.integer  "price_au",       limit: 4
    t.integer  "price_wsp",      limit: 4
    t.string   "robot_class",    limit: 255
    t.integer  "hp",             limit: 4
    t.integer  "hp_max",         limit: 4
    t.integer  "speed",          limit: 4
    t.integer  "speed_max",      limit: 4
    t.string   "slot",           limit: 255
    t.string   "slot1",          limit: 255
    t.string   "slot2",          limit: 255
    t.string   "slot3",          limit: 255
    t.string   "slot4",          limit: 255
    t.string   "ability",        limit: 255
    t.text     "note",           limit: 65535
    t.float    "rating",         limit: 24
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "weapon_posts", force: :cascade do |t|
    t.integer  "weapon_id",  limit: 4
    t.float    "rating",     limit: 24
    t.text     "post",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "namejp",           limit: 255
    t.integer  "required_level",   limit: 4
    t.integer  "price_ag",         limit: 4
    t.integer  "price_au",         limit: 4
    t.integer  "price_wsp",        limit: 4
    t.string   "weapon_class",     limit: 255
    t.string   "weapon_type",      limit: 255
    t.integer  "damage",           limit: 4
    t.integer  "damage_max",       limit: 4
    t.integer  "hp",               limit: 4
    t.integer  "hp_max",           limit: 4
    t.string   "shooting_range",   limit: 255
    t.integer  "rounds",           limit: 4
    t.float    "rps",              limit: 24
    t.float    "reload_sec",       limit: 24
    t.float    "whole_rounds_sec", limit: 24
    t.float    "cycle_sec",        limit: 24
    t.float    "cycle_damage",     limit: 24
    t.float    "cycle_damage_max", limit: 24
    t.float    "cycle_dps",        limit: 24
    t.float    "cycle_dps_max",    limit: 24
    t.text     "note",             limit: 65535
    t.float    "rating",           limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
