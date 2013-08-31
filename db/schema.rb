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

ActiveRecord::Schema.define(version: 20130831033318) do

  create_table "categories", force: true do |t|
    t.string   "code",           limit: 64,                null: false
    t.string   "name",           limit: 64,                null: false
    t.string   "en_name",        limit: 64,                null: false
    t.integer  "services_count",            default: 0,    null: false
    t.boolean  "normal",                    default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["code"], name: "index_categories_on_code", unique: true, using: :btree
  add_index "categories", ["en_name"], name: "index_categories_on_en_name", unique: true, using: :btree
  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "coverings", force: true do |t|
    t.string   "region_code",  limit: 64,                null: false
    t.string   "service_code", limit: 64,                null: false
    t.boolean  "normal",                  default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title",        limit: 128,                 null: false
    t.string   "url",                                      null: false
    t.string   "domain",       limit: 128,                 null: false
    t.string   "keywords"
    t.string   "summary"
    t.integer  "player_id",                default: 0,     null: false
    t.string   "player_name",                              null: false
    t.boolean  "original",                 default: false, null: false
    t.integer  "read_count",               default: 0,     null: false
    t.boolean  "is_banner",                default: false, null: false
    t.boolean  "normal",                   default: true,  null: false
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pings", force: true do |t|
    t.string   "region_code", limit: 32,              null: false
    t.string   "ip",          limit: 15,              null: false
    t.string   "user_agent",  limit: 124,             null: false
    t.integer  "speed",                   default: 0, null: false
    t.integer  "player_id",               default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "email",                             default: "",    null: false
    t.string   "encrypted_password",                default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 32,                 null: false
    t.string   "phone",                  limit: 20
    t.string   "avatar",                 limit: 64
    t.integer  "gender",                            default: 1,     null: false
    t.integer  "level",                             default: 1,     null: false
    t.boolean  "is_master",                         default: false, null: false
    t.boolean  "is_super",                          default: false, null: false
    t.boolean  "normal",                            default: true,  null: false
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true, using: :btree
  add_index "players", ["phone"], name: "index_players_on_phone", unique: true, using: :btree
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree

  create_table "regions", force: true do |t|
    t.string   "code",           limit: 32,                null: false
    t.string   "name",           limit: 64,                null: false
    t.string   "en_name",        limit: 64,                null: false
    t.integer  "ping_count",                default: 0,    null: false
    t.integer  "avg_speed",                 default: 0,    null: false
    t.integer  "zones_count",               default: 0,    null: false
    t.integer  "services_count",            default: 0,    null: false
    t.boolean  "normal",                    default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regions", ["code"], name: "index_regions_on_code", unique: true, using: :btree

  create_table "services", force: true do |t|
    t.string   "code",          limit: 64,                  null: false
    t.string   "category_code", limit: 64,                  null: false
    t.string   "name",          limit: 128,                 null: false
    t.string   "full_name",     limit: 64
    t.string   "caption",       limit: 128,                 null: false
    t.string   "url"
    t.boolean  "is_new",                    default: false, null: false
    t.boolean  "normal",                    default: true,  null: false
    t.integer  "regions_count",             default: 0,     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["code"], name: "index_services_on_code", unique: true, using: :btree

  create_table "sites", force: true do |t|
    t.string   "name",        limit: 128,                null: false
    t.string   "url",         limit: 128,                null: false
    t.string   "domain",      limit: 128,                null: false
    t.string   "favicon"
    t.boolean  "normal",                  default: true, null: false
    t.integer  "pages_count",             default: 0,    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zones", force: true do |t|
    t.string   "code",        limit: 32,                 null: false
    t.string   "region_code", limit: 32,                 null: false
    t.boolean  "normal",                  default: true, null: false
    t.string   "remark",      limit: 124
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zones", ["code"], name: "index_zones_on_code", unique: true, using: :btree

end
