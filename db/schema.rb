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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140519150523) do

  create_table "bookings", :force => true do |t|
    t.integer  "classroom_id"
    t.integer  "cohort_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "producer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "bookings", ["classroom_id"], :name => "index_bookings_on_classroom_id"
  add_index "bookings", ["cohort_id"], :name => "index_bookings_on_cohort_id"
  add_index "bookings", ["producer_id"], :name => "index_bookings_on_producer_id"

  create_table "campuses", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.integer  "capacity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "classrooms", ["campus_id"], :name => "index_classrooms_on_campus_id"

  create_table "cohorts", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cohorts", ["course_id"], :name => "index_cohorts_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "program_id"
    t.integer  "campus_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "courses", ["campus_id"], :name => "index_courses_on_campus_id"
  add_index "courses", ["program_id"], :name => "index_courses_on_program_id"

  create_table "enrollments", :force => true do |t|
    t.integer  "cohort_id"
    t.integer  "student_id"
    t.boolean  "pre_work_completed"
    t.integer  "paid"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "enrollments", ["cohort_id"], :name => "index_enrollments_on_cohort_id"
  add_index "enrollments", ["student_id"], :name => "index_enrollments_on_student_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teaching_assignments", :force => true do |t|
    t.integer  "cohort_id"
    t.integer  "instructor_id"
    t.integer  "rate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "teaching_assignments", ["cohort_id"], :name => "index_teaching_assignments_on_cohort_id"
  add_index "teaching_assignments", ["instructor_id"], :name => "index_teaching_assignments_on_instructor_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "role"
    t.string   "email"
    t.string   "phone"
    t.text     "bio"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
