class CreateBillSetups < ActiveRecord::Migration
  def self.up
    create_table :bill_setups do |t|
      t.integer :society_id,       :null => false
      t.string :head_name,         :limit => 100
      t.string :sub_head_name,     :limit => 100
      t.decimal :rate_sqft_month,  :precision => 7, :scale => 4
      t.decimal :rate_unit_month,  :precision => 8, :scale => 2
      t.decimal :service_tax_pct,  :precision => 5, :scale => 2
      t.integer :days_to_discount
      t.decimal :discount_pct,     :precision => 5, :scale => 2

      t.timestamps
    end
      add_index "bill_setups", ["society_id"], :name => "fk_bill_setup_society_id"
  end

  def self.down
    drop_table :bill_setups
  end
end
