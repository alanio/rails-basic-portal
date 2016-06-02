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

ActiveRecord::Schema.define(version: 20160602140228) do

  create_table "markers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "markers_posts", force: :cascade do |t|
    t.integer "marker_id", limit: 4
    t.integer "post_id",   limit: 4
  end

  add_index "markers_posts", ["marker_id"], name: "index_markers_posts_on_marker_id", using: :btree
  add_index "markers_posts", ["post_id"], name: "index_markers_posts_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "publisher_id",     limit: 4
    t.string   "title",            limit: 255
    t.string   "caption",          limit: 255
    t.text     "content",          limit: 65535
    t.datetime "publication_date"
    t.string   "image",            limit: 255
    t.boolean  "status"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "posts", ["publisher_id"], name: "index_posts_on_publisher_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "publishers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "password",   limit: 255
    t.integer  "genre",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "email",      limit: 255
  end

  add_foreign_key "markers_posts", "markers"
  add_foreign_key "markers_posts", "posts"
  add_foreign_key "posts", "publishers"
  add_foreign_key "posts", "users"
end
