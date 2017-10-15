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

ActiveRecord::Schema.define(version: 20171003164645) do

  create_table "accessories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "apartment_infos", force: :cascade do |t|
    t.text     "remarks",              limit: 65535
    t.string   "photo",                limit: 255
    t.decimal  "latitude",                           precision: 16, scale: 13
    t.decimal  "longitude",                          precision: 16, scale: 13
    t.integer  "floors",               limit: 4
    t.string   "made_of",              limit: 255
    t.integer  "reconstructed_or_not", limit: 4
    t.integer  "renovated_or_not",     limit: 4
    t.integer  "car_park_or_not",      limit: 4
    t.integer  "bicycle_park_or_not",  limit: 4
    t.integer  "bike_park_or_not",     limit: 4
    t.integer  "can_have_pet_or_not",  limit: 4
    t.integer  "contact_span",         limit: 4
    t.string   "conditions",           limit: 255
    t.integer  "update_fee",           limit: 4
    t.date     "published_on"
    t.date     "updating_on"
    t.string   "property_status",      limit: 255
    t.string   "availability",         limit: 255
    t.string   "management_id",        limit: 255
    t.integer  "apartment_id",         limit: 4
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.integer  "floor",                limit: 4
    t.integer  "brandnew",             limit: 4
    t.integer  "more_than_2floors",    limit: 4
    t.integer  "light_on_south",       limit: 4
    t.integer  "parkinglot",           limit: 4
    t.integer  "auto_lock",            limit: 4
    t.integer  "air_con",              limit: 4
    t.integer  "separate_bath_toilet", limit: 4
    t.integer  "reheating",            limit: 4
    t.integer  "wooden_floor",         limit: 4
    t.integer  "pet",                  limit: 4
    t.integer  "number_of_rooms",      limit: 4
    t.string   "house_insurance",      limit: 255
    t.string   "deal_way",             limit: 255
    t.text     "kitchen_bath",         limit: 65535
    t.text     "services",             limit: 65535
    t.text     "etc",                  limit: 65535
    t.integer  "balcony_space",        limit: 4
    t.string   "light_direction",      limit: 255
  end

  create_table "apartment_option_installations", force: :cascade do |t|
    t.integer  "apartment_id",        limit: 4
    t.integer  "apartment_option_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "apartment_options", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "apartment_surroundings", force: :cascade do |t|
    t.integer  "apartment_id",   limit: 4
    t.integer  "surrounding_id", limit: 4
    t.integer  "distance",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "apartment_thumbnails", force: :cascade do |t|
    t.integer  "apartment_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image",        limit: 255
  end

  add_index "apartment_thumbnails", ["apartment_id"], name: "index_apartment_thumbnails_on_apartment_id", using: :btree

  create_table "apartments", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "rent_fee",          limit: 4
    t.integer  "security_deposit",  limit: 4
    t.integer  "deposit",           limit: 4
    t.text     "transportation",    limit: 65535
    t.integer  "utility_fee",       limit: 4
    t.integer  "key_money",         limit: 4
    t.text     "address",           limit: 65535
    t.date     "since_when"
    t.integer  "room_type_id",      limit: 4
    t.string   "space",             limit: 255
    t.string   "photo",             limit: 255
    t.text     "recommendations",   limit: 65535
    t.string   "status",            limit: 255
    t.integer  "provider_id",       limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "country_id",        limit: 4
    t.integer  "province_id",       limit: 4
    t.integer  "district_id",       limit: 4
    t.integer  "subdistrict_id",    limit: 4
    t.integer  "surety_company_id", limit: 4
  end

  create_table "business_partners", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.date     "birthday"
    t.boolean  "gender_id"
    t.string   "zip_code",   limit: 255
    t.text     "address",    limit: 65535
    t.string   "tel1",       limit: 255
    t.string   "tel2",       limit: 255
    t.text     "memo",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name_ja",     limit: 255
    t.string   "name_th",     limit: 255
    t.string   "name_en",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "original_id", limit: 255
  end

  create_table "course_menus", force: :cascade do |t|
    t.integer  "menu_id",    limit: 4
    t.integer  "course_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "photo",         limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "price",         limit: 4
    t.text     "list",          limit: 65535
    t.integer  "restaurant_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.date     "birthday"
    t.integer  "gender_id",  limit: 4
    t.string   "zip_code",   limit: 255
    t.string   "address",    limit: 255
    t.string   "tel1",       limit: 255
    t.string   "tel2",       limit: 255
    t.text     "memo",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "tel",        limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name_ja",              limit: 255
    t.string   "name_th",              limit: 255
    t.string   "name_en",              limit: 255
    t.integer  "province_id",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "original_id",          limit: 255
    t.string   "province_original_id", limit: 255
    t.string   "url_safe",             limit: 255
  end

  add_index "districts", ["province_id"], name: "index_districts_on_province_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "apartment_id", limit: 4
    t.integer  "land_id",      limit: 4
    t.integer  "condo_id",     limit: 4
    t.integer  "house_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "category",     limit: 255
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, length: {"slug"=>70, "sluggable_type"=>nil, "scope"=>70}, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", length: {"slug"=>140, "sluggable_type"=>nil}, using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "size",               limit: 4
    t.integer  "stock",              limit: 4
    t.integer  "price",              limit: 4
    t.string   "ingredient",         limit: 255
    t.string   "description",        limit: 255
    t.string   "tenant_name",        limit: 255
    t.string   "category",           limit: 255
    t.string   "keyword",            limit: 255
    t.boolean  "gender"
    t.text     "memo",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "ingredient_id",      limit: 4
    t.integer  "gender_id",          limit: 4
    t.integer  "goods_category_id",  limit: 4
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.integer  "color_id",           limit: 4
    t.integer  "size_id",            limit: 4
    t.integer  "shopper_id",         limit: 4
    t.string   "status",             limit: 255
  end

  add_index "goods", ["color_id"], name: "index_goods_on_color_id", using: :btree
  add_index "goods", ["gender_id"], name: "index_goods_on_gender_id", using: :btree
  add_index "goods", ["goods_category_id"], name: "index_goods_on_goods_category_id", using: :btree
  add_index "goods", ["ingredient_id"], name: "index_goods_on_ingredient_id", using: :btree
  add_index "goods", ["size_id"], name: "index_goods_on_size_id", using: :btree

  create_table "goods_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "name",          limit: 255
    t.string   "photo",         limit: 255
    t.text     "description",   limit: 65535
    t.integer  "price",         limit: 4
    t.integer  "restaurant_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "order_id",   limit: 4
    t.integer  "good_id",    limit: 4
    t.integer  "qty",        limit: 4
    t.float    "sub_total",  limit: 24
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer  "user_id",            limit: 4
    t.string   "payment_status",     limit: 255
    t.string   "fulfillment_status", limit: 255
    t.float    "total_amount",       limit: 24
    t.float    "shipping_cost",      limit: 24
    t.float    "tax",                limit: 24
    t.text     "note",               limit: 65535
    t.integer  "timeline_id",        limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "paper_clip_tests", force: :cascade do |t|
    t.string   "namge",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  create_table "policies", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "sub_title",   limit: 255
    t.text     "description", limit: 65535
    t.string   "category",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "postal_code",    limit: 255
    t.text     "address",        limit: 65535
    t.string   "tel",            limit: 255
    t.string   "reciever_email", limit: 255
    t.integer  "user_id",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "property_inquiries", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "email",          limit: 255
    t.text     "body",           limit: 65535
    t.integer  "apartment_id",   limit: 4
    t.integer  "land_id",        limit: 4
    t.integer  "condominium_id", limit: 4
    t.integer  "house_id",       limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "tel",            limit: 255
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "photo",        limit: 255
    t.text     "introduction", limit: 65535
    t.string   "site_url",     limit: 255
    t.string   "address",      limit: 255
    t.string   "tel",          limit: 255
    t.string   "fax",          limit: 255
    t.string   "certificate",  limit: 255
    t.string   "working_time", limit: 255
    t.string   "holidays",     limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name_ja",             limit: 255
    t.string   "name_th",             limit: 255
    t.string   "name_en",             limit: 255
    t.integer  "country_id",          limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "original_id",         limit: 255
    t.string   "country_original_id", limit: 255
    t.string   "url_safe",            limit: 255
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "phone_number", limit: 255
    t.text     "description",  limit: 65535
    t.text     "notification", limit: 65535
    t.integer  "floor",        limit: 4
    t.integer  "chairs",       limit: 4
    t.integer  "private_room", limit: 4
    t.string   "photo",        limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "slug",         limit: 255
  end

  add_index "restaurants", ["slug"], name: "index_restaurants_on_slug", unique: true, using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "room_accessories", force: :cascade do |t|
    t.integer  "room_class_id", limit: 4
    t.integer  "accessory_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "room_classes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image",      limit: 255
  end

  create_table "room_services", force: :cascade do |t|
    t.integer  "room_class_id", limit: 4
    t.integer  "service_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "room_class_id",     limit: 4
    t.text     "description",       limit: 65535
    t.text     "sales_description", limit: 65535
    t.string   "area",              limit: 255
    t.integer  "price",             limit: 4
    t.integer  "qty",               limit: 4
    t.string   "checkin_time",      limit: 255
    t.string   "checkout_time",     limit: 255
    t.integer  "how_many_ppl",      limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "room_number",       limit: 255
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", limit: 255,   null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "shop_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shoppers", force: :cascade do |t|
    t.string   "shop_name",           limit: 255
    t.string   "representative_name", limit: 255
    t.string   "zip_code",            limit: 255
    t.text     "address",             limit: 65535
    t.string   "tel1",                limit: 255
    t.string   "tel2",                limit: 255
    t.string   "mail_address",        limit: 255
    t.integer  "shop_status_id",      limit: 4
    t.string   "account_number",      limit: 255
    t.text     "memo",                limit: 65535
    t.integer  "user_id",             limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "shoppers_distributors", force: :cascade do |t|
    t.integer  "shopper_id",     limit: 4
    t.integer  "distributor_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "site_inquiries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subdistricts", force: :cascade do |t|
    t.string   "name_ja",              limit: 255
    t.string   "name_th",              limit: 255
    t.string   "name_en",              limit: 255
    t.integer  "district_id",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "original_id",          limit: 255
    t.string   "district_original_id", limit: 255
    t.string   "url_safe",             limit: 255
  end

  add_index "subdistricts", ["district_id"], name: "index_subdistricts_on_district_id", using: :btree

  create_table "surroundings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "latitude",               precision: 16, scale: 13
    t.decimal  "longitude",              precision: 16, scale: 13
    t.string   "photo",      limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "system_admins", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.date     "birthday"
    t.integer  "gender_id",  limit: 4
    t.string   "zip_code",   limit: 255
    t.text     "address",    limit: 65535
    t.string   "tel1",       limit: 255
    t.string   "tel2",       limit: 255
    t.text     "memo",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["context"], name: "index_taggings_on_context", using: :btree
  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy", using: :btree
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree
  add_index "taggings", ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type", using: :btree
  add_index "taggings", ["tagger_id"], name: "index_taggings_on_tagger_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "test_models", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "time_tables", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "restaurant_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "timeline_messages", force: :cascade do |t|
    t.string   "message",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
    t.datetime "posted_at"
  end

  create_table "timelines", force: :cascade do |t|
    t.integer  "order_id",            limit: 4
    t.integer  "user_id",             limit: 4
    t.integer  "timeline_message_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "use_term_article_details", force: :cascade do |t|
    t.text     "description",         limit: 65535
    t.integer  "use_term_article_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "use_term_articles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "use_term_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "use_terms", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "sub_title",   limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",         null: false
    t.string   "encrypted_password",     limit: 255, default: "",         null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.boolean  "blacklist_flg"
    t.integer  "role_id",                limit: 4
    t.string   "uid",                    limit: 255
    t.string   "provider",               limit: 255
    t.integer  "provider_id",            limit: 4
    t.string   "name",                   limit: 255
    t.string   "role",                   limit: 255, default: "customer", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "apartment_thumbnails", "apartments"
  add_foreign_key "districts", "provinces"
  add_foreign_key "provinces", "countries"
  add_foreign_key "subdistricts", "districts"
end
