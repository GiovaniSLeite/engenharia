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

ActiveRecord::Schema.define(version: 20161016204103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aposta", force: :cascade do |t|
    t.string   "idSala"
    t.integer  "idUser"
    t.string   "palpite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "vencedor"
    t.integer  "status"
  end

  create_table "salas", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "idOwner"
    t.integer  "sala_type"
    t.string   "reward"
    t.integer  "stake"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "foto"
    t.string   "categoria"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "access_token"
    t.string   "uid"
    t.string   "photo_url"
    t.string   "provider"
    t.boolean  "status"
    t.string   "reason"
    t.string   "user_type"
    t.date     "data_ingresso"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
