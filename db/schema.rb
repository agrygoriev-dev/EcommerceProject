# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_191_103_195_632) do
  create_table 'customers', force: :cascade do |t|
    t.string 'name'
    t.string 'phone_number'
    t.string 'email_address'
    t.string 'details'
    t.string 'password'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'planets', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.integer 'population'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'starships', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.decimal 'speed'
    t.decimal 'length'
    t.decimal 'price'
    t.boolean 'is_new'
    t.boolean 'is_refurbished'
    t.integer 'type_id', null: true
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['type_id'], name: 'index_starships_on_type_id'
  end

  create_table 'types', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'starships', 'types'
end
