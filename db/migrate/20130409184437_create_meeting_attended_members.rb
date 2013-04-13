class CreateMeetingAttendedMembers < ActiveRecord::Migration
  def change
    create_table :meeting_attended_members do |t|
      t.belongs_to :meeting
      t.belongs_to :member

      t.timestamps
    end
    add_index :meeting_attended_members, :meeting_id
    add_index :meeting_attended_members, :member_id
  end
end
