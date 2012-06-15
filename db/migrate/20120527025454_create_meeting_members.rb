class CreateMeetingMembers < ActiveRecord::Migration
  def change
    create_table :meeting_members do |t|
      t.belongs_to :meeting
      t.belongs_to :member

      t.timestamps
    end
    add_index :meeting_members, :meeting_id
    add_index :meeting_members, :member_id
  end
end
