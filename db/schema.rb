# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100223124643) do

  create_table "cpx_ad_boards", :force => true do |t|
    t.string   "title"
    t.string   "size"
    t.integer  "owner_id"
    t.string   "click_url"
    t.string   "image_path"
    t.string   "text"
    t.string   "js_script"
    t.string   "alt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_ad_boards_campaigns", :force => true do |t|
    t.integer "campaign_id"
    t.integer "ad_board_id"
  end

  create_table "cpx_ad_zone_categories", :force => true do |t|
    t.string   "name"
    t.string   "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_ad_zone_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_ad_zone_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_ad_zones", :force => true do |t|
    t.integer  "site_id"
    t.integer  "owner_id"
    t.integer  "category_id"
    t.integer  "charge_type_id"
    t.integer  "status_id"
    t.string   "name"
    t.string   "size"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_advertiser_infos", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "real_user_id"
    t.integer  "network_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_campaigns", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "charge_type"
    t.integer  "charge_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_charge_cpms", :force => true do |t|
    t.integer  "unit_price"
    t.float    "discount"
    t.integer  "total_budget"
    t.integer  "priority"
    t.integer  "daily_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_charge_cpts", :force => true do |t|
    t.integer  "unit_price"
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_display_zones", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "ad_zone_id"
    t.string   "expression"
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_members", :force => true do |t|
    t.string   "name"
    t.string   "master_id"
    t.string   "company_name"
    t.string   "telephone"
    t.string   "mobile_no"
    t.string   "address"
    t.string   "email"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_networks", :force => true do |t|
    t.string   "name"
    t.integer  "master_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_order_statuses", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_orders", :force => true do |t|
    t.string   "name"
    t.integer  "advertiser_id"
    t.integer  "owner_id"
    t.integer  "status_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "referer"
    t.integer  "weight"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_publisher_infos", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "real_user_id"
    t.integer  "network_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_schema_migrations", :id => false, :force => true do |t|
    t.string "version", :null => false
  end

  add_index "cpx_schema_migrations", ["version"], :name => "cpx_unique_schema_migrations", :unique => true

  create_table "cpx_site_categories", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_sites", :force => true do |t|
    t.string   "name"
    t.integer  "publisher_info_id"
    t.integer  "category_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_target_defs", :force => true do |t|
    t.string   "name"
    t.string   "data_type"
    t.string   "available_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpx_targets", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "campaign_id"
    t.integer  "def_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
