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

ActiveRecord::Schema.define(version: 20170105031712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "turn"
    t.integer  "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "classrooms", ["unity_id"], name: "index_classrooms_on_unity_id", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "age"
    t.integer  "sex"
    t.string   "street"
    t.string   "number"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "phone_1"
    t.string   "phone_2"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "cnpj"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "sex"
    t.integer  "parent_id"
    t.string   "registration"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "students", ["parent_id"], name: "index_students_on_parent_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "sex"
    t.string   "phone_1"
    t.string   "phone_2"
    t.string   "registration"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "unities", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "number"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "phone_1"
    t.string   "phone_2"
    t.integer  "school_id"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "unities", ["school_id"], name: "index_unities_on_school_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "classrooms", "unities"
  add_foreign_key "students", "parents"
  add_foreign_key "unities", "schools"
end
