class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :contact_name
      t.string :vendor_phone
      t.string :vendor_email
      t.string :service_type
      t.string :stax_reg_number
      t.decimal :service_tax_rate
      t.string :pan_number
      t.boolean :is_recurring
      t.string :vat_number
      t.string :section_code
      t.string :payee_name
      t.string :address
      t.integer :society_id

      t.timestamps
    end
  end
end
