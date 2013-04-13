class CommitteeMember < ActiveRecord::Base

 attr_accessible :elected, :mc_start_date,:designation,
       :duty, :signatory, :mc_end_date, :member_id, :note
 belongs_to :member

scope :mc_search, lambda { |search| 
  search = "%#{search}%"
  where('designation ilike ? OR duty ilike ? OR mc_start_date ilike ?', search, search, search)
 }

end
