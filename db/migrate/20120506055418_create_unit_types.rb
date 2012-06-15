class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.integer :society_id
      t.string :type_name,          :limit => 100, :null => false
      t.decimal :tax_area,          :precision => 8, :scale => 2, :default => 0
      t.decimal :maintenance_area,   :precision => 8, :scale => 2, :default => 0
      t.decimal :carpet_area,       :precision => 8, :scale => 2, :default => 0
      t.decimal :built_area,        :precision => 8, :scale => 2, :default => 0
      t.decimal :super_built_area,  :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
      add_index "unit_types", ["society_id"], :name => "fk_unit_types_society_id"
  end
end
