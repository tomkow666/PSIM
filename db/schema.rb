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

ActiveRecord::Schema.define(version: 20150607184923) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true

  create_table "employees", force: :cascade do |t|
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
    t.datetime "birthdate"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "images", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.integer  "status_id"
    t.integer  "shipment_id"
    t.integer  "payment_id"
    t.string   "redeem_code"
    t.float    "cost"
    t.text     "extra_info"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "payment_method_id"
    t.boolean  "is_complete"
    t.float    "amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.string   "name"
    t.float    "netto_price"
    t.float    "vat"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "client_id"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipment_methods", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "method"
    t.float    "price"
    t.boolean  "is_complete"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thoughts", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "client_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.float    "netto_price"
    t.float    "vat"
    t.datetime "sold_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
