# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_14_125833) do

  create_table "pcs", force: :cascade do |t|
    t.string "cpu"
    t.integer "cpu_price"
    t.string "cpu_cooler"
    t.integer "cpu_cooler_price"
    t.string "memory"
    t.integer "memory_price"
    t.string "videocard"
    t.integer "videocard_price"
    t.string "storage"
    t.integer "storage_price"
    t.string "drive"
    t.integer "drive_price"
    t.string "case"
    t.integer "case_price"
    t.string "motherboard"
    t.integer "motherboard_price"
    t.string "power"
    t.integer "power_price"
    t.string "system"
    t.integer "system_price"
    t.string "fan"
    t.integer "fan_price"
    t.string "other"
    t.integer "other_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
