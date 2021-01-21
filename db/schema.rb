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

ActiveRecord::Schema.define(version: 2021_01_21_185840) do

  create_table "klasses", force: :cascade do |t|
    t.string "klassenname"
    t.string "code"
    t.string "des1"
    t.string "des2"
    t.string "des3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schuelers", force: :cascade do |t|
    t.integer "klasse_id"
    t.string "name"
    t.string "firstname"
    t.string "email"
    t.string "age"
    t.string "sex"
    t.string "des1"
    t.string "des2"
    t.string "des3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["klasse_id"], name: "index_schuelers_on_klasse_id"
  end

  add_foreign_key "schuelers", "klasses", column: "klasse_id"
end
