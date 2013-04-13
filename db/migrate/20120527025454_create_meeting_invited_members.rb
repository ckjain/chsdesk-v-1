class CreateMeetingInvitedMembers < ActiveRecord::Migration
  def change
    create_table :meeting_invited_members do |t|
      t.belongs_to :meeting
      t.belongs_to :member

      t.timestamps
    end
    add_index :meeting_invited_members, :meeting_id
    add_index :meeting_invited_members, :member_id
  end
end
