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

ActiveRecord::Schema.define(version: 20160227095407) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doc_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identity_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "loan_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reasons", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "receiving_details", force: :cascade do |t|
    t.integer  "receiving_id"
    t.integer  "sku_id"
    t.integer  "qty"
    t.decimal  "unit_price"
    t.decimal  "subtotal_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "receiving_details", ["receiving_id"], name: "index_receiving_details_on_receiving_id"
  add_index "receiving_details", ["sku_id"], name: "index_receiving_details_on_sku_id"

  create_table "receivings", force: :cascade do |t|
    t.string   "doc_no"
    t.date     "receiving_date"
    t.string   "ref_doc_no"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "doc_status_id",  default: 1
  end

  add_index "receivings", ["doc_status_id"], name: "index_receivings_on_doc_status_id"

  create_table "skus", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "sku_code"
    t.integer  "manufacturer_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "category_id",     default: 1
  end

  add_index "skus", ["category_id"], name: "index_skus_on_category_id"
  add_index "skus", ["manufacturer_id"], name: "index_skus_on_manufacturer_id"

  create_table "user_borrowers", force: :cascade do |t|
    t.string   "name"
    t.date     "registered_date"
    t.integer  "status"
    t.integer  "identity_type_id", default: 1
    t.string   "identity_no"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "user_borrowers", ["identity_type_id"], name: "index_user_borrowers_on_identity_type_id"

end
