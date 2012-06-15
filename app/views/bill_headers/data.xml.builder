xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@bill_headers.each do |bill_header|
		xml.tag!("row",{ "id" => bill_header.id }) do
			xml.tag!("cell", bill_header.head_name)
			xml.tag!("cell", bill_header.sub_head_name)
			xml.tag!("cell", bill_header.rate_sqft_month)
			xml.tag!("cell", bill_header.rate_unit_month)
			xml.tag!("cell", bill_header.service_tax_pct)
			xml.tag!("cell", bill_header.days_to_discount)
			xml.tag!("cell", bill_header.discount_pct)
			xml.tag!("cell", bill_header.society_id)

		end
	end
end