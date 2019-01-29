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

ActiveRecord::Schema.define(version: 2019_01_28_231425) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "lecturer"
    t.string "location"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "MD5_digest"
  end

  create_table "students", force: :cascade do |t|
    t.string "index"
    t.string "first_name"
    t.string "last_name"
    t.string "field_of_study"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

  create_table "students_events", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_students_events_on_event_id"
    t.index ["student_id"], name: "index_students_events_on_student_id"
  end

end
