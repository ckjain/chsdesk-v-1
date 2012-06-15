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

ActiveRecord::Schema.define(:version => 20120608180323) do

  create_table "agendas", :force => true do |t|
    t.text     "meeting_agendas"
    t.integer  "meeting_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "bill_headers", :force => true do |t|
    t.date     "bill_date"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "bill_cycle"
    t.integer  "grace_period"
    t.integer  "days_to_discount"
    t.integer  "bill_number_start"
    t.integer  "bill_number_end"
    t.string   "bill_number_format"
    t.boolean  "locked_period"
    t.integer  "society_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "bill_setups", :force => true do |t|
    t.integer  "society_id",                                                    :null => false
    t.string   "head_name",        :limit => 100
    t.string   "sub_head_name",    :limit => 100
    t.decimal  "rate_sqft_month",                 :precision => 7, :scale => 4
    t.decimal  "rate_unit_month",                 :precision => 8, :scale => 2
    t.decimal  "service_tax_pct",                 :precision => 5, :scale => 2
    t.integer  "days_to_discount"
    t.decimal  "discount_pct",                    :precision => 5, :scale => 2
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  add_index "bill_setups", ["society_id"], :name => "fk_bill_setup_society_id"

  create_table "bills", :force => true do |t|
    t.integer  "bill_number",          :limit => 25,                                                 :null => false
    t.date     "from_date",                                                                          :null => false
    t.date     "to_date",                                                                            :null => false
    t.date     "bill_date",                                                                          :null => false
    t.integer  "membership_id",                                                                      :null => false
    t.decimal  "parking_charges",                    :precision => 7,  :scale => 2, :default => 0.0
    t.decimal  "noc_charges",                        :precision => 7,  :scale => 2, :default => 0.0
    t.decimal  "property_tax",                       :precision => 8,  :scale => 2, :default => 0.0
    t.decimal  "sinking_fund",                       :precision => 7,  :scale => 2, :default => 0.0
    t.decimal  "repair_fund",                        :precision => 7,  :scale => 2, :default => 0.0
    t.decimal  "maintenance_charges",                :precision => 8,  :scale => 2, :default => 0.0
    t.decimal  "other_charges",                      :precision => 8,  :scale => 2, :default => 0.0
    t.string   "other_detail"
    t.decimal  "service_tax",                        :precision => 8,  :scale => 2, :default => 0.0
    t.decimal  "penalty_interest",                   :precision => 8,  :scale => 2, :default => 0.0
    t.decimal  "discount_amount",                    :precision => 6,  :scale => 2, :default => 0.0
    t.decimal  "current_bill_charges",               :precision => 10, :scale => 2, :default => 0.0
    t.decimal  "payable_amount",                     :precision => 10, :scale => 2, :default => 0.0
    t.integer  "bill_header_id",                                                                     :null => false
    t.integer  "society_id",                                                                         :null => false
    t.string   "image"
    t.datetime "created_at",                                                                         :null => false
    t.datetime "updated_at",                                                                         :null => false
  end

  add_index "bills", ["membership_id"], :name => "fk_membership_id"

  create_table "meeting_members", :force => true do |t|
    t.integer  "meeting_id"
    t.integer  "member_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "meeting_members", ["meeting_id"], :name => "index_meeting_members_on_meeting_id"
  add_index "meeting_members", ["member_id"], :name => "index_meeting_members_on_member_id"

  create_table "meeting_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetings", :force => true do |t|
    t.integer  "meeting_type_id"
    t.datetime "meeting_date"
    t.string   "meeting_place"
    t.string   "issued_by"
    t.datetime "issue_date"
    t.integer  "society_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "name",         :limit => 50
    t.string   "mobile_phone", :limit => 20
    t.string   "email_id",     :limit => 50
    t.integer  "user_id"
    t.integer  "society_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer  "society_id"
    t.integer  "unit_id"
    t.integer  "member_id"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "status",                            :default => true
    t.string   "member_type",         :limit => 30, :default => "Regular"
    t.string   "ownership",           :limit => 30, :default => "Owner"
    t.boolean  "live_here",                         :default => true
    t.boolean  "email_bills",                       :default => true
    t.boolean  "sms_bills",                         :default => true
    t.boolean  "sms_receipt",                       :default => true
    t.boolean  "is_mc_member",                      :default => false
    t.integer  "sold_status_id"
    t.integer  "Occupency_status_id"
    t.integer  "maintenance_by_id"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

  add_index "memberships", ["member_id"], :name => "index_memberships_on_member_id"
  add_index "memberships", ["society_id"], :name => "index_memberships_on_society_id"
  add_index "memberships", ["unit_id"], :name => "index_memberships_on_unit_id"

  create_table "resolutions", :force => true do |t|
    t.text     "meeting_resolutions"
    t.string   "proposed_by"
    t.string   "seconded_by"
    t.integer  "agenda_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "societies", :force => true do |t|
    t.string   "name",                    :limit => 100,                           :null => false
    t.integer  "number_of_flats"
    t.boolean  "active",                                 :default => true
    t.string   "society_address_line1",   :limit => 200
    t.string   "society_address_line2",   :limit => 200
    t.string   "society_city",            :limit => 50,  :default => "MUMBAI"
    t.string   "society_pincode",         :limit => 20
    t.string   "society_state",           :limit => 50,  :default => "MAHARASTRA"
    t.string   "society_country",         :limit => 50,  :default => "INDIA"
    t.string   "govt_address_line1",      :limit => 200
    t.string   "govt_address_line2",      :limit => 200
    t.string   "govt_address_city",       :limit => 50,  :default => "MUMBAI"
    t.string   "govt_address_pincode",    :limit => 20
    t.string   "govt_address_plotnumber", :limit => 50
    t.string   "registration_number",     :limit => 50
    t.string   "govt_ward_number",        :limit => 50
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "staff_name"
    t.string   "gender"
    t.string   "staff_category"
    t.integer  "staff_age"
    t.string   "staff_email"
    t.string   "staff_phone"
    t.string   "staff_current_address"
    t.string   "staff_permamnent_address"
    t.boolean  "active"
    t.date     "joining_date"
    t.integer  "staff_salary"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "society_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "unit_types", :force => true do |t|
    t.integer  "society_id"
    t.string   "type_name",        :limit => 100,                                                :null => false
    t.decimal  "tax_area",                        :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "maintenance_area",                :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "carpet_area",                     :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "built_area",                      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "super_built_area",                :precision => 8, :scale => 2, :default => 0.0
    t.datetime "created_at",                                                                     :null => false
    t.datetime "updated_at",                                                                     :null => false
  end

  add_index "unit_types", ["society_id"], :name => "fk_unit_types_society_id"

  create_table "units", :force => true do |t|
    t.integer  "society_id"
    t.integer  "unit_type_id"
    t.string   "unit_number",        :limit => 20
    t.string   "wing_name",          :limit => 10
    t.string   "building_name",      :limit => 10
    t.string   "floor_name",         :limit => 10
    t.decimal  "noc_charges",                      :precision => 7, :scale => 2, :default => 0.0
    t.decimal  "parking_charges",                  :precision => 7, :scale => 2, :default => 0.0
    t.decimal  "property_tax",                     :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "maintenance_charge",               :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "sinking_fund",                     :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "repair_fund",                      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "service_tax",                      :precision => 8, :scale => 2, :default => 0.0
    t.decimal  "other_charge",                     :precision => 8, :scale => 2, :default => 0.0
    t.string   "other_detail"
    t.decimal  "bill_amount",                      :precision => 9, :scale => 2, :default => 0.0
    t.integer  "assigned"
    t.datetime "created_at",                                                                      :null => false
    t.datetime "updated_at",                                                                      :null => false
  end

  add_index "units", ["id"], :name => "index_units_on_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",        :null => false
    t.string   "encrypted_password",                    :default => ""
    t.string   "name",                   :limit => 100, :default => ""
    t.string   "state",                                 :default => "passive"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.integer  "society_id"
    t.date     "date_of_birth"
    t.string   "phone_number"
    t.string   "zip"
    t.text     "bio"
    t.string   "avatar_url"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "vendors", :force => true do |t|
    t.string   "vendor_name"
    t.string   "contact_name"
    t.string   "vendor_phone"
    t.string   "vendor_email"
    t.string   "service_type"
    t.string   "stax_reg_number"
    t.decimal  "service_tax_rate"
    t.string   "pan_number"
    t.boolean  "is_recurring"
    t.string   "vat_number"
    t.string   "section_code"
    t.string   "payee_name"
    t.string   "address"
    t.integer  "society_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
