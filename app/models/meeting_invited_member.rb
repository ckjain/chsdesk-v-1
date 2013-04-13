class MeetingInvitedMember < ActiveRecord::Base
  attr_accessible :meeting_id, :member_id
  belongs_to :meeting
  belongs_to :member

end
