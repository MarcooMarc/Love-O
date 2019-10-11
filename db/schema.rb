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

ActiveRecord::Schema.define(version: 2019_10_10_164322) do

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
    t.text "description"
    t.string "string"
    t.string "date"
    t.string "datetime"
    t.integer "avis"
    t.string "commentaire"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commandes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "quantités", default: 1, null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_commandes_on_customer_id"
    t.index ["user_id"], name: "index_commandes_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phonenumber"
    t.string "livraison"
    t.string "lieu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcours", force: :cascade do |t|
    t.text "description"
    t.string "photo1"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "photo5"
    t.string "photo6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
