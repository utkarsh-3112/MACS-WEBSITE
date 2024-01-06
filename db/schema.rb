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

ActiveRecord::Schema[7.0].define(version: 2023_12_31_181100) do
  create_table "assistant_lecturers", force: :cascade do |t|
    t.string "dp"
    t.string "name"
    t.string "qualification"
    t.string "email"
    t.string "contact_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_staffs", force: :cascade do |t|
    t.string "dp"
    t.string "name"
    t.string "designation"
    t.string "qualification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_code"
    t.string "course_name"
    t.integer "semester"
    t.string "category"
    t.string "programme"
    t.integer "credits"
    t.text "content"
    t.text "references"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date_time"
    t.string "status"
    t.string "name"
    t.string "organizers"
    t.string "coordinator"
    t.string "sponsors"
    t.string "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "dp"
    t.string "name"
    t.string "designation"
    t.date "date_of_joining"
    t.text "professional_experience"
    t.text "academic_background"
    t.text "areas_of_interest"
    t.text "visits_abroad"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "phone_number"
  end

  create_table "faculty_publications", force: :cascade do |t|
    t.integer "faculty_id", null: false
    t.integer "publication_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_faculty_publications_on_faculty_id"
    t.index ["publication_id"], name: "index_faculty_publications_on_publication_id"
  end

  create_table "publications", force: :cascade do |t|
    t.text "name"
    t.string "publish_in"
    t.binary "reigon"
    t.string "url"
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "research_consultancies", force: :cascade do |t|
    t.text "project_name"
    t.integer "faculty_id", null: false
    t.string "sanctioned_amount"
    t.binary "status"
    t.string "project_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_research_consultancies_on_faculty_id"
  end

  create_table "research_scholars", force: :cascade do |t|
    t.string "dp"
    t.string "name"
    t.string "category"
    t.integer "supervisors_id", null: false
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supervisors_id"], name: "index_research_scholars_on_supervisors_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "dp"
    t.string "name"
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

  add_foreign_key "faculty_publications", "faculties"
  add_foreign_key "faculty_publications", "publications"
  add_foreign_key "research_consultancies", "faculties"
  add_foreign_key "research_scholars", "supervisors", column: "supervisors_id"
end
