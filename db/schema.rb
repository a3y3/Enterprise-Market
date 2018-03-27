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

ActiveRecord::Schema.define(version: 20180327104820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commodity_type_descriptions", force: :cascade do |t|
    t.integer "commodity_type_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commodity_type_uoms", force: :cascade do |t|
    t.integer "commodity_type_id"
    t.text "uom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commodity_types", force: :cascade do |t|
    t.text "name"
    t.integer "available_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rfqs", force: :cascade do |t|
    t.integer "commodity_type_id", null: false
    t.integer "quantity", null: false
    t.string "uom", null: false
    t.integer "pincode", null: false
    t.boolean "pending", null: false
    t.integer "mobile_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "commodity_type_description_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "first_name"
    t.text "last_name"
    t.text "company_name"
    t.integer "mobile_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
