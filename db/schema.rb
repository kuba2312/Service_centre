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

ActiveRecord::Schema.define(version: 20171105232817) do

  create_table "employee_requests", id: false, force: :cascade do |t|
    t.integer "employee_id"
    t.integer "request_id"
    t.index ["employee_id"], name: "index_employee_requests_on_employee_id"
    t.index ["request_id"], name: "index_employee_requests_on_request_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "nickname"
    t.string "first_name"
    t.string "last_name"
    t.string "function"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "employees_requests", id: false, force: :cascade do |t|
    t.integer "employee_id"
    t.integer "request_id"
    t.index ["employee_id"], name: "index_employees_requests_on_employee_id"
    t.index ["request_id"], name: "index_employees_requests_on_request_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "body"
    t.integer "employee_id"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_posts_on_employee_id"
    t.index ["topic_id"], name: "index_posts_on_topic_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "client_first"
    t.string "client_last"
    t.float "cost"
    t.float "costVAT"
    t.string "description"
    t.integer "number_employee"
    t.string "status"
    t.string "client_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.integer "employee_id"
    t.integer "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_topics_on_employee_id"
    t.index ["request_id"], name: "index_topics_on_request_id"
  end

end
