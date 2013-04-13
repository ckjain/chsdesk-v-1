class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :user
      t.string :action
      t.belongs_to :trackable
      t.string :trackable_type
      t.string :ip
      t.string :browser
      t.belongs_to :society

      t.timestamps
    end
    add_index :activities, :user_id
    add_index :activities, :trackable_id
    add_index :activities, :society_id
  end
end
