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

ActiveRecord::Schema.define(version: 2021_07_14_033542) do

  create_table "lessons", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
    t.datetime "start_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "student_id"
    t.string "test_name"
    t.integer "english_score"
    t.integer "math_score"
    t.integer "japanese_score"
    t.integer "science_score"
    t.integer "social_study_score"
    t.integer "ew_english_score"
    t.integer "cm_english_score"
    t.integer "math_a_score"
    t.integer "math_b_score"
    t.integer "math_c_score"
    t.integer "modern_writing_score"
    t.integer "classic_score"
    t.integer "chemistory_score"
    t.integer "physics_score"
    t.integer "biology_score"
    t.integer "japanese_history_score"
    t.integer "world_history_score"
    t.integer "geograpy_score"
    t.string "semester_name"
    t.integer "english_academic_result"
    t.integer "math_academic_result"
    t.integer "japanese_academic_result"
    t.integer "science_academic_result"
    t.integer "sstudy_academic_result"
    t.integer "art_academic_result"
    t.integer "music_academic_result"
    t.integer "pe_academic_result"
    t.integer "te_academic_result"
    t.integer "ex_english_accademic_result"
    t.integer "cm_english_accademic_result"
    t.integer "math_a_accademic_result"
    t.integer "math_b_accademic_result"
    t.integer "math_c_accademic_result"
    t.integer "modern_writing_accademic_result"
    t.integer "classic_accademic_result"
    t.integer "chemistory_accademic_result"
    t.integer "physics_accademic_result"
    t.integer "biology_accademic_result"
    t.integer "japanese_history_accademic_result"
    t.integer "world_history_accademic_result"
    t.integer "geograpy_accademic_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.datetime "start_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "grade", null: false
    t.string "school", null: false
    t.integer "gender", default: 0, null: false
    t.string "phone_number", null: false
    t.text "notices"
    t.boolean "is_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_students", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_teachers", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "grade", null: false
    t.string "university", null: false
    t.string "undergraduate", null: false
    t.integer "gender", default: 0, null: false
    t.string "phone_number", null: false
    t.text "notices"
    t.boolean "is_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "employee_number", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
