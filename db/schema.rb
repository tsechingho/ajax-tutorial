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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120820105017) do

  create_table "animal_handbook_creatures", :force => true do |t|
    t.integer  "animal_handbook_id"
    t.integer  "creature_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "animal_handbook_creatures", ["animal_handbook_id"], :name => "index_animal_handbook_creatures_on_animal_handbook_id"
  add_index "animal_handbook_creatures", ["creature_id"], :name => "index_animal_handbook_creatures_on_creature_id"

  create_table "animal_handbooks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "creature_photos", :force => true do |t|
    t.integer  "creature_id"
    t.string   "content_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "creature_photos", ["creature_id"], :name => "index_creature_photos_on_creature_id"

  create_table "creatures", :force => true do |t|
    t.string   "popular_name"
    t.string   "scientific_name"
    t.string   "place_of_origin"
    t.text     "characteristic"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
