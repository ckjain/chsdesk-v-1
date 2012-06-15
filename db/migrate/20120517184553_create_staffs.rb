class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.string :gender
      t.string :staff_category
      t.integer :staff_age
      t.string :staff_email
      t.string :staff_phone
      t.string :staff_current_address
      t.string :staff_permamnent_address
      t.boolean :active
      t.date :joining_date
      t.integer :staff_salary
      t.has_attached_file :avatar
      t.integer :society_id

      t.timestamps
    end
  end
end
