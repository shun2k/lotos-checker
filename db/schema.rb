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

ActiveRecord::Schema[7.0].define(version: 2023_08_05_134826) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "loto7s", force: :cascade do |t|
    t.integer "times"
    t.string "first"
    t.string "second"
    t.string "third"
    t.string "forth"
    t.string "fifth"
    t.string "sixth"
    t.string "seventh"
    t.string "bonusfirst"
    t.string "bonussecond"
    t.datetime "announcement"
    t.integer "firstcounts"
    t.integer "secondcounts"
    t.integer "thirdcounts"
    t.integer "forthcounts"
    t.integer "fifthcounts"
    t.integer "sixthcounts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
