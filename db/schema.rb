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

ActiveRecord::Schema.define(version: 20140702115147) do

  create_table "achievements", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "points"
    t.integer  "badge_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges", force: true do |t|
    t.string   "icon"
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guides", force: true do |t|
    t.string   "body"
    t.integer  "module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modules", force: true do |t|
    t.string   "name"
    t.integer  "points"
    t.text     "description"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "body"
    t.integer  "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "answer"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "body"
    t.integer  "module_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
  end

end
