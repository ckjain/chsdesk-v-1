class Resolution < ActiveRecord::Base

  attr_accessible :meeting_resolutions, :proposed_by, :seconded_by, :agenda_id, :society_id
  belongs_to :agenda
  belongs_to :society


end
