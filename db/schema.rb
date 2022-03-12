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

ActiveRecord::Schema[7.0].define(version: 2022_03_12_202714) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tutor_session_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tutor_session_id", null: false
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_session_id"], name: "index_tutor_session_users_on_tutor_session_id"
    t.index ["user_id"], name: "index_tutor_session_users_on_user_id"
  end

  create_table "tutor_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tutor_session_users", "tutor_sessions"
  add_foreign_key "tutor_session_users", "users"
end
