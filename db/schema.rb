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

ActiveRecord::Schema.define(version: 2018_09_21_165953) do

  create_table "conversations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
    t.index ["user_id"], name: "index_conversations_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "to"
    t.string "from"
    t.string "status"
    t.string "body"
    t.string "message_sid"
    t.string "account_sid"
    t.string "messaging_service_sid"
    t.string "direction"
    t.datetime "send_at"
    t.datetime "sent_at"
    t.string "frequency"
    t.boolean "recurring"
    t.integer "user_id"
    t.integer "conversation_id"
    t.integer "recurring_message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["recurring_message_id"], name: "index_messages_on_recurring_message_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "receivers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_receivers_on_user_id"
  end

  create_table "recurring_messages", force: :cascade do |t|
    t.datetime "end_date"
    t.datetime "start_date"
    t.string "frequency"
    t.string "body"
    t.string "to"
    t.integer "user_id"
    t.integer "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_recurring_messages_on_conversation_id"
    t.index ["user_id"], name: "index_recurring_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
