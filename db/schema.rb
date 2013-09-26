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

ActiveRecord::Schema.define(:version => 20130926082759) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "email"
    t.string   "hash_pass"
    t.string   "hash_salt"
    t.integer  "priv_level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "anketa", :force => true do |t|
    t.integer  "quest_1"
    t.integer  "quest_2"
    t.integer  "quest_3"
    t.integer  "quest_4"
    t.integer  "quest_5"
    t.text     "wishes"
    t.string   "pib"
    t.string   "uaddr"
    t.string   "contacts"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "asks", :force => true do |t|
    t.string   "fio"
    t.string   "from"
    t.string   "subj"
    t.text     "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "codes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "lang",       :default => "ru"
  end

  create_table "contacts", :force => true do |t|
    t.string   "unit"
    t.string   "rank"
    t.string   "fio"
    t.string   "phone_g1"
    t.string   "phone_g2"
    t.string   "mobile1"
    t.string   "mobile2"
    t.string   "skype"
    t.string   "email1"
    t.string   "email2"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "lang"
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "lang",       :default => "ru"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "edizms", :force => true do |t|
    t.string   "name"
    t.string   "lang"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "faqs", :force => true do |t|
    t.text     "quest"
    t.text     "answer"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "lang"
  end

  create_table "products", :force => true do |t|
    t.integer  "zapros_id"
    t.string   "naim"
    t.string   "code_num"
    t.string   "code"
    t.string   "tamrez"
    t.string   "typetran"
    t.string   "koltov"
    t.string   "base_ed"
    t.string   "dop_ed"
    t.string   "dop_ed_name"
    t.string   "stoim"
    t.string   "ed"
    t.string   "total"
    t.string   "sum_cust_payment"
    t.string   "another_currency"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "transps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "lang",       :default => "ru"
  end

  create_table "trs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "lang",       :default => "ru"
  end

  create_table "zakons", :force => true do |t|
    t.text     "name"
    t.text     "link"
    t.boolean  "visible"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "lang"
  end

  create_table "zapros", :force => true do |t|
    t.string   "naim"
    t.string   "code_num"
    t.string   "code"
    t.string   "tamrez"
    t.string   "typetran"
    t.string   "koltov"
    t.string   "base_ed"
    t.string   "dop_ed"
    t.string   "stoim"
    t.string   "ed"
    t.string   "total"
    t.string   "path_ryhy"
    t.string   "chastota"
    t.string   "fio"
    t.string   "rank"
    t.string   "phone"
    t.string   "email"
    t.string   "fpath"
    t.string   "att"
    t.string   "att_file_name"
    t.text     "dopinfo"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "sum_cust_payment"
    t.string   "company_name"
    t.string   "dog_num"
    t.datetime "dog_date"
    t.string   "dop_ed_name"
    t.string   "base_ed_name"
    t.string   "another_currency"
    t.string   "code_edr"
  end

end
