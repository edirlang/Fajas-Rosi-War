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

ActiveRecord::Schema.define(version: 20140625023917) do

  create_table "materiales", force: true do |t|
    t.string   "id_material"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.string   "id_producto"
    t.string   "descripcion"
    t.string   "nombre"
    t.string   "cantidad"
    t.string   "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "cedula"
    t.string   "nombre"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
