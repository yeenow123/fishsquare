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

ActiveRecord::Schema.define(version: 20140614182546) do

  create_table "catches", force: true do |t|
    t.integer  "check_in_id"
    t.string   "species"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fishing_style"
  end

  create_table "check_in_images", force: true do |t|
    t.integer  "check_in_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "check_ins", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "report_type"
    t.string   "fishing_type"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "report_time"
  end

  create_table "vessels", force: true do |t|
    t.integer  "check_in_id"
    t.string   "vessel_type"
    t.string   "vessel_number"
    t.string   "vessel_name"
    t.string   "estimated_crew"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "length"
    t.string   "color"
  end

end
