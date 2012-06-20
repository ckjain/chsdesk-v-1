class CreateMeetingTypes < ActiveRecord::Migration
  def change
    create_table :meeting_types do |t|
      t.string :name

      t.timestamps
    end
     MeetingType.create! :name => "Managing Committee"
     MeetingType.create! :name => "Annual General Body Committee"
     MeetingType.create! :name => "Special General Body Committee"
     MeetingType.create! :name => "Security Committee"
     MeetingType.create! :name => "Housekeeping Committee"
  
  end
end
