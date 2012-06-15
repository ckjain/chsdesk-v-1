xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@bill_setups.each do |bill_setup|
		xml.tag!("row",{ "id" => bill_setup.id }) do
			xml.tag!("cell", bill_setup.head_name)
			xml.tag!("cell", bill_setup.sub_head_name)
			xml.tag!("cell", bill_setup.rate_sqft_month)
			xml.tag!("cell", bill_setup.rate_unit_month)
			xml.tag!("cell", bill_setup.service_tax_pct)
			xml.tag!("cell", bill_setup.days_to_discount)
			xml.tag!("cell", bill_setup.discount_pct)
			xml.tag!("cell", bill_setup.society_id)

		end
	end
end