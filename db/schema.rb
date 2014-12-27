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

ActiveRecord::Schema.define(version: 20141227183516) do

  create_table "ators", force: true do |t|
    t.string   "ator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.text     "corpo"
    t.integer  "quantidadelikes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "respost_id"
    t.integer  "user_id"
  end

  add_index "comentarios", ["user_id"], name: "index_comentarios_on_user_id"

  create_table "diretors", force: true do |t|
    t.string   "diretor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudios", force: true do |t|
    t.string   "estudio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filme_ators", force: true do |t|
    t.integer  "filme_id"
    t.integer  "ator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filme_diretors", force: true do |t|
    t.integer  "filme_id"
    t.integer  "diretor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filme_estudios", force: true do |t|
    t.integer  "filme_id"
    t.integer  "estudio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filme_generos", force: true do |t|
    t.integer  "filme_id"
    t.integer  "genero_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filme_produtors", force: true do |t|
    t.integer  "filme_id"
    t.integer  "produtor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filmes", force: true do |t|
    t.string   "titulo"
    t.date     "datalancamento"
    t.string   "imagemdecapa"
    t.text     "sinopse"
    t.string   "duracao"
    t.text     "tags"
    t.integer  "nota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generos", force: true do |t|
    t.string   "genero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtors", force: true do |t|
    t.string   "produtor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resposts", force: true do |t|
    t.text     "corpo"
    t.integer  "quantidadelikes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topico_id"
    t.integer  "user_id"
  end

  add_index "resposts", ["user_id"], name: "index_resposts_on_user_id"

  create_table "topicos", force: true do |t|
    t.text     "corpo"
    t.string   "titulo"
    t.integer  "quantidade_likes"
    t.text     "tags"
    t.integer  "quantidade_visualizacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "filme_id"
    t.integer  "user_id"
  end

  add_index "topicos", ["user_id"], name: "index_topicos_on_user_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "foto"
    t.date     "data_de_nascimento"
    t.string   "link"
    t.text     "descricao"
    t.string   "sexo"
    t.string   "categoria"
    t.string   "pais"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
