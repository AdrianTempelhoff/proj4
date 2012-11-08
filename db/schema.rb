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

ActiveRecord::Schema.define(:version => 20121108045413) do

  create_table "basket_items", :force => true do |t|
    t.integer  "basket_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "baskets", :force => true do |t|
    t.integer  "temp_basket_id"
    t.integer  "purchase_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "group_permissions", :force => true do |t|
    t.integer  "user_group_id"
    t.integer  "permission_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "receipt_id"
    t.integer  "purchase_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "invoice_id"
    t.integer  "basket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "receipts", :force => true do |t|
    t.integer  "invoice_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "temp_basket_items", :force => true do |t|
    t.integer  "temp_basket_id"
    t.integer  "item_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "temp_baskets", :force => true do |t|
    t.integer  "basket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "user_group_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
