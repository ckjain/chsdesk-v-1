xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@vendors.each do |vendor|
		xml.tag!("row",{ "id" => vendor.id }) do
			xml.tag!("cell", vendor.vendor_name)
			xml.tag!("cell", vendor.contact_name)
			xml.tag!("cell", vendor.vendor_phone)
			xml.tag!("cell", vendor.vendor_email)
			xml.tag!("cell", vendor.service_type)
			xml.tag!("cell", vendor.payee_name)
			xml.tag!("cell", vendor.address)
			xml.tag!("cell", vendor.stax_reg_number)
			xml.tag!("cell", vendor.service_tax_rate)
			xml.tag!("cell", vendor.pan_number)
			xml.tag!("cell", vendor.is_recurring)
			xml.tag!("cell", vendor.vat_number)
			xml.tag!("cell", vendor.section_code)
			xml.tag!("cell", vendor.avatar_file_name)
			xml.tag!("cell", vendor.society_id)
		end
	end
end
