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

ActiveRecord::Schema.define(:version => 20150514134303) do

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discussions", :force => true do |t|
    t.date     "Date"
    t.datetime "Time"
    t.string   "Name"
    t.string   "Message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructor1s", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.date     "DoB"
    t.string   "Full_Name"
    t.string   "Your_Description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "instructorcourses", :force => true do |t|
    t.string   "instructoremail"
    t.string   "coursecode"
    t.string   "coursename"
    t.string   "coursedescription"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "instructors", :force => true do |t|
    t.date     "DoB"
    t.string   "Full_Name"
    t.string   "Your_Description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "studentcourses", :force => true do |t|
    t.string   "email"
    t.string   "coursecode"
    t.date     "date_of_joining"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "gender"
    t.date     "dob"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
