class CreateMeetingTypes < ActiveRecord::Migration
  def change
    create_table :meeting_types do |t|
      t.string :name

      t.timestamps
    end
     MeetingType.create! :name => "Managing Committee"
     MeetingType.create! :name => "Annual General Body"
     MeetingType.create! :name => "Special General Body"
     MeetingType.create! :name => "Security Committee"
     MeetingType.create! :name => "Housekeeping Committee"
     MeetingType.create! :name => "Repair Committee"
     MeetingType.create! :name => "Sports Committee"
     MeetingType.create! :name => "Gymkhana Committee"
     MeetingType.create! :name => "Festival Committee"
     MeetingType.create! :name => "Swimming pool Committee"

  end
end
