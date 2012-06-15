class BillSetup < ActiveRecord::Base
  attr_accessible :society_id, :head_name, :sub_head_name, :rate_sqft_month, :rate_unit_month,
   :service_tax_pct, :days_to_discount, :discount_pct

  belongs_to :society
         
 scope :billsetup_search, lambda { |search| 
  search = "%#{search}%"
  where('head_name LIKE ? ',  search)
 }

end