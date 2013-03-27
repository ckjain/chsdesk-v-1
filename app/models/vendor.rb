class Vendor < ActiveRecord::Base
  attr_accessible :vendor_name, :contact_name, :vendor_phone,:vendor_email,:service_type,:address,
  :is_recurring, :payee_name, :pan_number,  :section_code, :service_tax_rate, 
    :stax_reg_number, :vat_number, :avatar,:avatar_file_name, :avatar_content_type,
   :avatar_file_size, :avatar_updated_at, :society_id

   belongs_to :society


end
