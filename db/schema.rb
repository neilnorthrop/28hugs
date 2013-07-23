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

ActiveRecord::Schema.define(version: 20130722222827) do

  create_table "charges", force: true do |t|
    t.string   "paid_status"
    t.string   "stripe_token"
    t.string   "last_4"
    t.integer  "subscriber_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.date     "ship_date"
    t.string   "password_digest"
    t.string   "stripe_customer_id"
    t.string   "payment_status"
    t.string   "recipient_name"
    t.string   "recipient_address"
    t.string   "recipient_city"
    t.string   "recipient_state"
    t.string   "recipient_zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "subscribers", ["remember_token"], name: "index_subscribers_on_remember_token"

end
