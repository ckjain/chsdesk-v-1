class CreateMemberships < ActiveRecord::Migration
 def change
    create_table :memberships do |t|
      t.integer :society_id      
      t.integer :unit_id
      t.integer :member_id
      t.date    :start_date
      t.date    :end_date
      t.boolean :status,          :default => true
      t.string  :member_type,     :limit => 30, :default => "Regular"
      t.string  :ownership,       :limit => 30,:default => 'Owner'
      t.boolean :live_here,       :default => true
      t.boolean :email_bills,     :default => true
      t.boolean :sms_bills,       :default => true
      t.boolean :sms_receipt,     :default => true
      t.boolean :is_mc_member,    :default => false
      t.integer :sold_status_id
      t.integer :Occupency_status_id
      t.integer :maintenance_by_id

      t.timestamps
    end
     add_index :memberships, :society_id
     add_index :memberships, :unit_id
     add_index :memberships, :member_id
  end
end
