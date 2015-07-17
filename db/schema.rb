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

ActiveRecord::Schema.define(version: 20150717101212) do

  create_table "accessaries", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "moniter_id"
    t.integer  "system_id"
    t.integer  "items"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "accessory_peripherals", force: :cascade do |t|
    t.integer  "accessary_id"
    t.integer  "peripheral_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "accessory_peripherals", ["accessary_id"], name: "index_accessory_peripherals_on_accessary_id"
  add_index "accessory_peripherals", ["peripheral_id"], name: "index_accessory_peripherals_on_peripheral_id"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "emp_id"
    t.string   "name"
    t.string   "email_id"
    t.integer  "mobile_no"
    t.string   "designation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "moniters", force: :cascade do |t|
    t.string   "screen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peripherals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.string   "size"
    t.boolean  "is_laptop",  default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
