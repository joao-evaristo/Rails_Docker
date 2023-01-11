# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_11_015632) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academia", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "telefone"
    t.string "endereco"
    t.float "precoMatricula"
    t.float "precoMensalidade"
    t.string "site"
    t.string "instagram"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "lng"
    t.string "infoextra"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "academium_id"
  end

  create_table "user_enrollments", force: :cascade do |t|
    t.boolean "active"
    t.bigint "usuario_id", null: false
    t.bigint "academium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["academium_id"], name: "index_user_enrollments_on_academium_id"
    t.index ["usuario_id"], name: "index_user_enrollments_on_usuario_id"
  end

  create_table "user_gym_admins", force: :cascade do |t|
    t.boolean "active"
    t.bigint "usuario_id", null: false
    t.bigint "academium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "validation_status"
    t.index ["academium_id"], name: "index_user_gym_admins_on_academium_id"
    t.index ["usuario_id"], name: "index_user_gym_admins_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.text "telefone"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.datetime "data_nascimento"
    t.string "role"
  end

  add_foreign_key "user_enrollments", "academia"
  add_foreign_key "user_enrollments", "usuarios"
  add_foreign_key "user_gym_admins", "academia"
  add_foreign_key "user_gym_admins", "usuarios"
end
