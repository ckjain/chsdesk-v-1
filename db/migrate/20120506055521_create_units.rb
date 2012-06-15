class CreateUnits < ActiveRecord::Migration
   def change
    create_table :units do |t|
      t.integer :society_id
      t.integer :unit_type_id
      t.string :unit_number,        :limit => 20
      t.string :wing_name,          :limit => 10
      t.string :building_name,      :limit => 10
      t.string :floor_name,         :limit => 10
      t.decimal :noc_charges,       :precision => 7, :scale => 2, :default => 0
      t.decimal :parking_charges,   :precision => 7, :scale => 2, :default => 0
      t.decimal :property_tax,      :precision => 8, :scale => 2, :default => 0
      t.decimal :maintenance_charge,:precision => 8, :scale => 2, :default => 0
      t.decimal :sinking_fund,      :precision => 8, :scale => 2, :default => 0
      t.decimal :repair_fund,       :precision => 8, :scale => 2, :default => 0
      t.decimal :service_tax,       :precision => 8, :scale => 2, :default => 0
      t.decimal :other_charge,      :precision => 8, :scale => 2, :default => 0
      t.string :other_detail 
      t.decimal :bill_amount,       :precision => 9, :scale => 2, :default => 0
      t.integer :assigned
      t.timestamps
      
    end
    add_index :units, :id
  end
end
