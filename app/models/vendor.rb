class Vendor < ActiveRecord::Base
  attr_accessible :address, :contact_name, :is_recurring, :pan_number, :payee_name, :section_code, :service_tax_rate, :service_type, :society_id, :stax_reg_number, :vat_number, :vendor_email, :vendor_name, :vendor_phone

        belongs_to :society

scope :vendor_search, lambda { |search| 
  search = "%#{search}%"
  where('vendor_name LIKE ? OR contact_name LIKE ? OR vendor_phone LIKE ? OR service_type LIKE ?', search, search, search, search)
 }

end
