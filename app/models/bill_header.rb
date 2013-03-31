class BillHeader < ActiveRecord::Base
  attr_accessible :bill_cycle, :bill_date, :bill_number_end, :bill_number_format, :bill_number_start, 
  :from_date, :grace_period, :locked_period, :society_id, :to_date, :days_to_discount

  belongs_to :society
         
 scope :billheader_search, lambda { |search| 
  search = "%#{search}%"
  where('bill_number_start LIKE ? ',  search)
 }

end
