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

ActiveRecord::Schema.define(version: 20161226232453) do

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.text     "body"
    t.integer  "event_sjsu_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  add_index "comments", ["event_sjsu_id"], name: "index_comments_on_event_sjsu_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "event_sjsus", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "source"
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "event_sjsus", ["user_id"], name: "index_event_sjsus_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
