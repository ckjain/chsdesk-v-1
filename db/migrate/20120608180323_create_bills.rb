class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :bill_number,           :limit => 25, :null => false
      t.date :from_date,                :null => false
      t.date :to_date,                  :null => false
      t.date :bill_date,                :null => false
      t.integer :membership_id,         :null => false
      t.decimal :parking_charges,       :precision => 7, :scale => 2, :default => 0
      t.decimal :noc_charges,           :precision => 7, :scale => 2, :default => 0
      t.decimal :property_tax,          :precision => 8, :scale => 2, :default => 0
      t.decimal :sinking_fund,          :precision => 7, :scale => 2, :default => 0
      t.decimal :repair_fund,           :precision => 7, :scale => 2, :default => 0
      t.decimal :maintenance_charges,   :precision => 8, :scale => 2, :default => 0
      t.decimal :other_charges,         :precision => 8, :scale => 2, :default => 0
      t.string  :other_detail,          :null => true
      t.decimal :service_tax,           :precision => 8, :scale => 2, :default => 0
      t.decimal :penalty_interest,      :precision => 8, :scale => 2, :default => 0
      t.decimal :discount_amount,       :precision => 6, :scale => 2, :default => 0
      t.decimal :current_bill_charges,  :precision => 10, :scale => 2, :default => 0
      t.decimal :payable_amount,        :precision => 10, :scale => 2, :default => 0
      t.integer :bill_header_id,        :null => false
      t.integer :society_id,            :null => false
      t.string :image
      
      t.timestamps
    end
      add_index "bills", ["membership_id"], :name => "fk_membership_id"
  end
end
