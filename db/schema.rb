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

ActiveRecord::Schema.define(version: 20160311201815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "body",        null: false
    t.integer  "position",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "answers", ["question_id", "position"], name: "index_answers_on_question_id_and_position", unique: true, using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "body",          null: false
    t.integer  "question_type", null: false
    t.integer  "position",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "questions", ["position"], name: "index_questions_on_position", unique: true, using: :btree

  create_table "response_answers", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "response_id"
    t.integer  "question_id"
    t.integer  "answer_id"
  end

  add_index "response_answers", ["answer_id"], name: "index_response_answers_on_answer_id", using: :btree
  add_index "response_answers", ["question_id"], name: "index_response_answers_on_question_id", using: :btree
  add_index "response_answers", ["response_id"], name: "index_response_answers_on_response_id", using: :btree

  create_table "responses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "responses", ["user_id"], name: "index_responses_on_user_id", using: :btree

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "gender",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["gender"], name: "index_users_on_gender", using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "response_answers", "answers"
  add_foreign_key "response_answers", "questions"
  add_foreign_key "response_answers", "responses"
  add_foreign_key "responses", "users"
end
