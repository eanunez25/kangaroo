# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_210751) do

  create_table "bull_put_spreads", force: :cascade do |t|
    t.decimal "floor1", precision: 8, scale: 2
    t.decimal "floor2", precision: 8, scale: 2
    t.decimal "strike", precision: 8, scale: 2
    t.date "expiration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "asset"
  end

  create_table "short_puts", force: :cascade do |t|
    t.decimal "floor1", precision: 8, scale: 2
    t.decimal "floor2", precision: 8, scale: 2
    t.decimal "strike", precision: 8, scale: 2
    t.date "expiration"
    t.string "asset"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "remember_created_at"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
  end

end
