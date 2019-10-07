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

ActiveRecord::Schema.define(version: 2019_10_07_100513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ateliers", force: :cascade do |t|
    t.string "titre"
    t.string "date"
    t.string "lieu"
    t.integer "prix"
    t.integer "places"
    t.string "horaires"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "bentos", force: :cascade do |t|
    t.string "titre"
    t.string "description"
    t.string "string"
    t.string "date"
    t.string "datetime"
    t.integer "avis"
    t.string "commentaire"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcours", force: :cascade do |t|
    t.string "description"
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "photo5"
    t.string "photo6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
