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

ActiveRecord::Schema.define(version: 20170106130740) do

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
    t.integer  "parent_one"
    t.integer  "parent_two"
    t.string   "registration"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "works", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "unity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "works", ["teacher_id"], name: "index_works_on_teacher_id", using: :btree
  add_index "works", ["unity_id"], name: "index_works_on_unity_id", using: :btree

  add_foreign_key "classrooms", "unities"
  add_foreign_key "unities", "schools"
  add_foreign_key "works", "teachers"
  add_foreign_key "works", "unities"
end
