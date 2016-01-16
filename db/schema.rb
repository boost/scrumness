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

ActiveRecord::Schema.define(version: 20151214072819) do

  create_table "api_keys", force: true do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "terms",      default: true
  end

  create_table "bikes", force: true do |t|
    t.string   "stationName"
    t.string   "string"
    t.string   "availableDocks"
    t.string   "totalDocks"
    t.string   "integer"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "statusValue"
    t.string   "statusKey"
    t.string   "availableBikes"
    t.string   "stAddress1"
    t.string   "stAddress2"
    t.string   "city"
    t.string   "postalCode"
    t.string   "location"
    t.string   "altitude"
    t.string   "testStation"
    t.string   "lastCommunicationTime"
    t.string   "landMark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "ratings", force: true do |t|
    t.integer  "point"
    t.integer  "role"
    t.text     "comment"
    t.integer  "sprint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "sprint_id"
    t.integer  "score"
    t.text     "comment"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprints", force: true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.integer  "votes"
    t.text     "comment"
    t.float    "rating",      limit: 24, default: 0.0
    t.text     "description"
  end

  create_table "station_data", force: true do |t|
    t.integer  "station_id"
    t.string   "name"
    t.string   "lat"
    t.string   "long"
    t.integer  "dockcount"
    t.string   "landmark"
    t.datetime "installation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", force: true do |t|
    t.string   "station_id"
    t.string   "integer"
    t.string   "name"
    t.string   "string"
    t.string   "lat"
    t.string   "long"
    t.string   "dockcount"
    t.string   "landmark"
    t.string   "installation"
    t.string   "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tokens", force: true do |t|
    t.integer  "value"
    t.integer  "sprint_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "duration"
    t.datetime "start_date"
    t.string   "start_station"
    t.string   "start_terminal"
    t.datetime "end_date"
    t.string   "end_station"
    t.string   "end_terminal"
    t.string   "bike"
    t.string   "subscriber_type"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
