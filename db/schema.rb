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

ActiveRecord::Schema.define(version: 20141016023248) do

  create_table "collections", force: true do |t|
    t.string   "collection_name"
    t.string   "collection_category"
    t.integer  "shop_name_id"
    t.integer  "shop_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collections", ["shop_name_id"], name: "index_collections_on_shop_name_id"
  add_index "collections", ["shop_product_id"], name: "index_collections_on_shop_product_id"

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "dob"
    t.string   "interest"
    t.string   "friends"
    t.integer  "collection_name_id"
    t.integer  "shop_product_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "profiles", ["collection_name_id"], name: "index_profiles_on_collection_name_id"
  add_index "profiles", ["shop_product_id"], name: "index_profiles_on_shop_product_id"
  add_index "profiles", ["slug"], name: "index_profiles_on_slug", unique: true

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "share_with_friends", force: true do |t|
    t.integer  "friends_id"
    t.integer  "collection_name_id"
    t.integer  "shop_name_id"
    t.integer  "shop_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "share_with_friends", ["collection_name_id"], name: "index_share_with_friends_on_collection_name_id"
  add_index "share_with_friends", ["friends_id"], name: "index_share_with_friends_on_friends_id"
  add_index "share_with_friends", ["shop_name_id"], name: "index_share_with_friends_on_shop_name_id"
  add_index "share_with_friends", ["shop_product_id"], name: "index_share_with_friends_on_shop_product_id"

  create_table "shop_owners", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shop_owners", ["email"], name: "index_shop_owners_on_email", unique: true
  add_index "shop_owners", ["reset_password_token"], name: "index_shop_owners_on_reset_password_token", unique: true

  create_table "shop_profiles", force: true do |t|
    t.string   "shop_owner"
    t.string   "shop_name"
    t.string   "shop_product"
    t.string   "shop_category"
    t.string   "shop_keyword"
    t.integer  "shop_owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
