class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.text :meeting_resolutions
      t.string :proposed_by
      t.string :seconded_by
      t.integer :agenda_id
 
      t.timestamps
    end
  end
end
