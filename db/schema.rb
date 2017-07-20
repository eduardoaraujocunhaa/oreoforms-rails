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

ActiveRecord::Schema.define(version: 20170720141836) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id_interviewed"
    t.integer "n_options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.bigint "kind_of_question_id"
    t.index ["kind_of_question_id"], name: "index_answers_on_kind_of_question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "block_of_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "n_option"
    t.string "text_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "answer_id"
    t.index ["answer_id"], name: "index_block_of_answers_on_answer_id"
  end

  create_table "block_of_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id"
    t.index ["question_id"], name: "index_block_of_questions_on_question_id"
  end

  create_table "kind_of_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "kind_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "url"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["url"], name: "index_questionaries_on_url", unique: true
    t.index ["user_id"], name: "index_questionaries_on_user_id"
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "enunciate"
    t.integer "n_options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "questionary_id"
    t.bigint "kind_of_question_id"
    t.index ["kind_of_question_id"], name: "index_questions_on_kind_of_question_id"
    t.index ["questionary_id"], name: "index_questions_on_questionary_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "kind_of_questions"
  add_foreign_key "answers", "questions"
  add_foreign_key "block_of_answers", "answers"
  add_foreign_key "block_of_questions", "questions"
  add_foreign_key "questionaries", "users"
  add_foreign_key "questions", "kind_of_questions"
  add_foreign_key "questions", "questionaries"
end
