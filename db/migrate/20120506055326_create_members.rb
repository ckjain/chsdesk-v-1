class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name,             :limit => 50
      t.string :mobile_phone,     :limit => 20
      t.string :email_id,         :limit => 50
      t.string :member_no
      t.integer :user_id
      t.integer :society_id

      t.timestamps
    end
  end
end
