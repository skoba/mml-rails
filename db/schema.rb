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

ActiveRecord::Schema.define(version: 20150513162430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archetypes", force: :cascade do |t|
    t.string   "uid"
    t.string   "archetypeid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bodily_outputs", force: :cascade do |t|
    t.string   "type"
    t.float    "volume"
    t.string   "unit"
    t.string   "color"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intakes", force: :cascade do |t|
    t.string   "type"
    t.float    "volume"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: :cascade do |t|
    t.integer  "prescription_id"
    t.string   "name"
    t.string   "code"
    t.decimal  "dose"
    t.string   "dose_unit"
    t.integer  "frequency"
    t.date     "start_date"
    t.integer  "duration"
    t.string   "instruction"
    t.boolean  "prn"
    t.string   "route"
    t.string   "form"
    t.integer  "batchNo"
    t.boolean  "brand_alternative"
    t.boolean  "long_term"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "medications", ["prescription_id"], name: "index_medications_on_prescription_id", using: :btree

  create_table "mmlca", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mmlvs_id"
  end

  create_table "mmlvs", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "observed_time"
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "path"
    t.string   "atcode"
    t.string   "rmclass"
    t.string   "txt_value"
    t.integer  "int_value"
    t.float    "flt_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "archetype_id"
  end

  create_table "observations", force: :cascade do |t|
    t.string   "item"
    t.float    "value"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "type"
    t.datetime "action_datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vital_signs", force: :cascade do |t|
    t.string   "type"
    t.integer  "val"
    t.string   "unit"
    t.integer  "mmlvs_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "medications", "prescriptions"
end
