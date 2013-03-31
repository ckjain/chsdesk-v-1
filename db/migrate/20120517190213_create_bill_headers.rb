class CreateBillHeaders < ActiveRecord::Migration
  def change
    create_table :bill_headers do |t|
      t.date :bill_date
      t.date :from_date
      t.date :to_date
      t.string :bill_cycle
      t.integer :grace_period
      t.integer :bill_number_start
      t.integer :bill_number_end
      t.string :bill_number_format
      t.boolean :locked_period
      t.integer :society_id

      t.timestamps
    end
  end
end
