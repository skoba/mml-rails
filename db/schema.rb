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

ActiveRecord::Schema.define(version: 20130314132013) do

  create_table "bodily_outputs", force: true do |t|
    t.string   "type"
    t.float    "volume"
    t.string   "unit"
    t.string   "color"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intakes", force: true do |t|
    t.string   "type"
    t.float    "volume"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observations", force: true do |t|
    t.string   "item"
    t.float    "value"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "type"
    t.datetime "action_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vital_signs", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "heart_rate"
    t.integer  "systolic_blood_pressure"
    t.integer  "diastolic_blood_pressure"
    t.integer  "weight"
    t.float    "spo2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
