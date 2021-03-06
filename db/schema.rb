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

ActiveRecord::Schema.define(version: 20141210143623) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "weatherLink"
  end

  create_table "item_types", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_type_id"
  end

  create_table "items_suitcases", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "suitcase_id"
  end

  create_table "items_u_suitcases_joins", id: false, force: true do |t|
    t.integer "item_id"
    t.integer "u_suitcase_id"
  end

  create_table "sessions", force: true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "suitcases", force: true do |t|
    t.integer  "country_id"
    t.string   "weather"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suitcases", ["country_id"], name: "index_suitcases_on_country_id"

  create_table "travels", force: true do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "travels", ["country_id"], name: "index_travels_on_country_id"
  add_index "travels", ["user_id"], name: "index_travels_on_user_id"

  create_table "u_suitcases", force: true do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.string   "weather"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "u_suitcases", ["country_id"], name: "index_u_suitcases_on_country_id"
  add_index "u_suitcases", ["user_id"], name: "index_u_suitcases_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id"

end
