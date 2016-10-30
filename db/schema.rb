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

ActiveRecord::Schema.define(version: 20161028194046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aposta", force: :cascade do |t|
    t.integer  "idSala"
    t.integer  "idUser"
    t.string   "palpite"
    t.boolean  "vencedor"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bets", force: :cascade do |t|
    t.string   "name" #nome
    t.string   "description" #descricao, regras
    t.integer  "ownerId"  #id do dono da aposta
    t.string   "url_photo" #url pra uma foto
    t.string   "category" #categoria (personalizado pra todos por enquanto), podia ter futebol ou coisa do tipo pra personalizar o resto dos campos
    t.integer  "room_status" #ativa, fechada, finalizada
    t.integer  "room_type" #publica, privada
    t.integer  "stake" #valor apostado
    t.date     "final_date" #data final para palpites
    t.string   "final_answer" #a resposta final - preencher ao finalizar
    t.string   "answer_type" #tipo de resposta, numero ou algo do tipo
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "guesses", force: :cascade do |t|
    t.integer  "bet_id"
    t.integer  "usuario_id"
    t.boolean  "won_status"
    t.string   "guess_text"
    t.integer  "guess_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["usuario_id"], name: "index_messages_on_usuario_id", using: :btree

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

  add_foreign_key "messages", "usuarios"
end
