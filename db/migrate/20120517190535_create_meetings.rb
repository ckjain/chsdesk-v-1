class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :meeting_type_id
      t.datetime :meeting_date
      t.string :meeting_place, :default => "Society Office"
      t.string :issued_by, :default => "Hon. Secretary"
      t.datetime :issue_date
      t.integer :society_id
      t.datetime :ends_at
      t.boolean :all_day
      t.text :description

      t.timestamps
    end
  end
end

