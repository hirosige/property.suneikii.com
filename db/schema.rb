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

ActiveRecord::Schema.define(version: 20171216102221) do

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

  create_table "condo_infos", force: :cascade do |t|
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
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.integer  "condo_id",             limit: 4
  end

  create_table "condo_option_installations", force: :cascade do |t|
    t.integer  "condo_id",        limit: 4
    t.integer  "condo_option_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "condo_options", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "condo_surroundings", force: :cascade do |t|
    t.integer  "condo_id",       limit: 4
    t.integer  "surrounding_id", limit: 4
    t.integer  "distance",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "condo_thumbnails", force: :cascade do |t|
    t.integer  "condo_id",   limit: 4
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "condos", force: :cascade do |t|
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
    t.integer  "country_id",        limit: 4
    t.integer  "province_id",       limit: 4
    t.integer  "district_id",       limit: 4
    t.integer  "subdistrict_id",    limit: 4
    t.integer  "surety_company_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name_ja",          limit: 255
    t.string   "name_th",          limit: 255
    t.string   "name_en",          limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "original_id",      limit: 255
    t.integer  "apartments_count", limit: 4,   default: 0, null: false
    t.integer  "lands_count",      limit: 4,   default: 0, null: false
    t.integer  "condos_count",     limit: 4,   default: 0, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name_ja",              limit: 255
    t.string   "name_th",              limit: 255
    t.string   "name_en",              limit: 255
    t.integer  "province_id",          limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "original_id",          limit: 255
    t.string   "province_original_id", limit: 255
    t.string   "url_safe",             limit: 255
    t.integer  "apartments_count",     limit: 4,   default: 0, null: false
    t.integer  "lands_count",          limit: 4,   default: 0, null: false
    t.integer  "condos_count",         limit: 4,   default: 0, null: false
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

  create_table "inquiries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "land_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "land_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "land_infos", force: :cascade do |t|
    t.text     "remarks",                   limit: 65535
    t.string   "photo",                     limit: 255
    t.decimal  "latitude",                                precision: 16, scale: 13
    t.decimal  "longitude",                               precision: 16, scale: 13
    t.integer  "corner",                    limit: 4
    t.integer  "low_rise_residential_area", limit: 4
    t.integer  "no_condition",              limit: 4
    t.integer  "ownership_or_not",          limit: 4
    t.integer  "contact_span",              limit: 4
    t.string   "conditions",                limit: 255
    t.integer  "update_fee",                limit: 4
    t.date     "published_on"
    t.date     "updating_on"
    t.string   "property_status",           limit: 255
    t.string   "availability",              limit: 255
    t.string   "management_id",             limit: 255
    t.integer  "land_id",                   limit: 4
    t.string   "face_with_road",            limit: 255
    t.string   "send_back",                 limit: 255
    t.string   "private_way_space",         limit: 255
    t.string   "urban_planning",            limit: 255
    t.string   "zoning",                    limit: 255
    t.string   "topography",                limit: 255
    t.string   "ownership",                 limit: 255
    t.string   "land_law_notification",     limit: 255
    t.string   "deal_way",                  limit: 255
    t.text     "services",                  limit: 65535
    t.text     "etc",                       limit: 65535
    t.text     "school",                    limit: 65535
    t.text     "shopping",                  limit: 65535
    t.text     "facilities",                limit: 65535
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
  end

  create_table "land_option_installations", force: :cascade do |t|
    t.integer  "land_id",        limit: 4
    t.integer  "land_option_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "land_options", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "land_surroundings", force: :cascade do |t|
    t.integer  "land_id",        limit: 4
    t.integer  "surrounding_id", limit: 4
    t.integer  "distance",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "land_thumbnails", force: :cascade do |t|
    t.integer  "land_id",    limit: 4
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lands", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "rent_fee",          limit: 4
    t.text     "transportation",    limit: 65535
    t.text     "address",           limit: 65535
    t.integer  "land_category_id",  limit: 4
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
    t.integer  "building_coverage", limit: 4
    t.integer  "floor_area_ratio",  limit: 4
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
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "original_id",         limit: 255
    t.string   "country_original_id", limit: 255
    t.string   "url_safe",            limit: 255
    t.integer  "apartments_count",    limit: 4,   default: 0, null: false
    t.integer  "lands_count",         limit: 4,   default: 0, null: false
    t.integer  "condos_count",        limit: 4,   default: 0, null: false
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id", using: :btree

  create_table "room_types", force: :cascade do |t|
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

  create_table "site_inquiries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "subdistricts", force: :cascade do |t|
    t.string   "name_ja",              limit: 255
    t.string   "name_th",              limit: 255
    t.string   "name_en",              limit: 255
    t.integer  "district_id",          limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "original_id",          limit: 255
    t.string   "district_original_id", limit: 255
    t.string   "url_safe",             limit: 255
    t.integer  "apartments_count",     limit: 4,   default: 0, null: false
    t.integer  "lands_count",          limit: 4,   default: 0, null: false
    t.integer  "condos_count",         limit: 4,   default: 0, null: false
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
