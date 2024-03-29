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

ActiveRecord::Schema.define(:version => 20111001182802) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "type"
    t.text     "description"
    t.string   "language"
    t.string   "living_accomodation"
    t.text     "living_utilities"
    t.float    "distance_to_duty_station"
    t.float    "cost_of_living"
    t.string   "transportation"
    t.float    "cost_of_transportation"
    t.float    "visa_fee"
    t.text     "visa_requirements"
    t.text     "medivac_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_applications", :force => true do |t|
    t.integer  "partner_id"
    t.text     "description"
    t.integer  "number_of_consultants"
    t.boolean  "accepted"
    t.boolean  "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_scorecards", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_application_id"
    t.integer  "database_score"
    t.integer  "web_app_score"
    t.integer  "design_score"
    t.integer  "tech_plan_score"
    t.integer  "web_dev_score"
    t.integer  "content_mgt_score"
    t.integer  "tech_support_score"
    t.integer  "geo_infosys_score"
    t.integer  "egov_score"
    t.integer  "ehealth_score"
    t.integer  "security_score"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_applications", :force => true do |t|
    t.integer  "user_id"
    t.binary   "resume"
    t.binary   "transcript"
    t.binary   "statement_of_interest"
    t.boolean  "accepted"
    t.boolean  "open"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "complete"
  end

  create_table "student_scorecards", :force => true do |t|
    t.integer  "user_id"
    t.integer  "student_application_id"
    t.integer  "resume_score"
    t.integer  "transcript_score"
    t.integer  "statement_of_interest_score"
    t.integer  "special_class_score"
    t.integer  "database_score"
    t.integer  "web_app_score"
    t.integer  "design_score"
    t.integer  "tech_plan_score"
    t.integer  "web_dev_score"
    t.integer  "content_mgt_score"
    t.integer  "tech_support_score"
    t.integer  "geo_infosys_score"
    t.integer  "egov_score"
    t.integer  "ehealth_score"
    t.integer  "security_score"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mobile_num"
    t.string   "office_num"
    t.string   "skype"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
