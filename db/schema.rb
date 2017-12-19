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

ActiveRecord::Schema.define(version: 20171219123504) do

  create_table "all_eartquakes", force: :cascade do |t|
    t.time "time"
    t.float "latitude"
    t.float "longitude"
    t.decimal "depth"
    t.decimal "mag"
    t.decimal "magType"
    t.integer "nst"
    t.decimal "gap"
    t.decimal "dmin"
    t.decimal "rms"
    t.string "net"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "earthmoves", force: :cascade do |t|
    t.time "time"
    t.float "latitude"
    t.float "longitude"
    t.decimal "depth"
    t.decimal "mag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "earthmoves_past_days", force: :cascade do |t|
    t.datetime "time"
    t.float "latitude"
    t.float "longitude"
    t.decimal "depth"
    t.decimal "mag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
