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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_180916) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "description"
    t.string "url"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_categories_on_project_id"
  end

  create_table "ifc_models", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_ifc_models_on_project_id"
  end

  create_table "pdfs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_pdfs_on_project_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_photos_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "detail"
    t.string "owner"
    t.string "main_contractor"
    t.integer "year_completion"
    t.integer "duration"
    t.integer "budget"
    t.integer "labor_force"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.string "description"
    t.string "adress"
    t.string "city"
    t.string "website"
    t.integer "zip_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_videos_on_project_id"
  end

  add_foreign_key "categories", "projects"
  add_foreign_key "ifc_models", "projects"
  add_foreign_key "pdfs", "projects"
  add_foreign_key "photos", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "videos", "projects"
end
