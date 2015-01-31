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

ActiveRecord::Schema.define(version: 20150116020312) do

  create_table "pracas", force: :cascade do |t|
    t.string   "nome_equip_urbano",         limit: 255
    t.string   "tipo_equip_urbano",         limit: 255
    t.string   "endereco_equip_urbano",     limit: 255
    t.string   "codigo_logradouro",         limit: 255
    t.string   "lei_equip_urbano",          limit: 255
    t.string   "nome_bairro",               limit: 255
    t.string   "codigo_bairro",             limit: 255
    t.string   "nome_oficial_equip_urbano", limit: 255
    t.string   "area",                      limit: 255
    t.string   "perimetro",                 limit: 255
    t.string   "latitude",                  limit: 255
    t.string   "longitude",                 limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
