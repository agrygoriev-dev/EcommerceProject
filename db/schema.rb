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

ActiveRecord::Schema.define(version: 2019_11_03_205018) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email_address"
    t.string "details"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orderproducts", force: :cascade do |t|
    t.integer "order_id"
    t.integer "starship_id"
    t.integer "amount"
    t.decimal "unit_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_orderproducts_on_order_id"
    t.index ["starship_id"], name: "index_orderproducts_on_starship_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipplanets", force: :cascade do |t|
    t.integer "starship_id"
    t.integer "planet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_id"], name: "index_shipplanets_on_planet_id"
    t.index ["starship_id"], name: "index_shipplanets_on_starship_id"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "speed"
    t.decimal "length"
    t.decimal "price"
    t.boolean "is_new"
    t.boolean "is_refurbished"
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_starships_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orderproducts", "orders"
  add_foreign_key "orderproducts", "starships"
  add_foreign_key "orders", "customers"
  add_foreign_key "shipplanets", "planets"
  add_foreign_key "shipplanets", "starships"
  add_foreign_key "starships", "types"
end
