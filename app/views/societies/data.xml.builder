xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@societies.each do |society|
		xml.tag!("row",{ "id" => society.id }) do
			xml.tag!("cell", society.name)
			xml.tag!("cell", society.number_of_flats)
			xml.tag!("cell", society.active)
			xml.tag!("cell", society.society_address_line1)
			xml.tag!("cell", society.society_address_line2)
			xml.tag!("cell", society.society_city)
			xml.tag!("cell", society.society_pincode)
			xml.tag!("cell", society.society_state)
			xml.tag!("cell", society.society_country)
			xml.tag!("cell", society.govt_address_line1)
			xml.tag!("cell", society.govt_address_line2)
			xml.tag!("cell", society.govt_address_city)
			xml.tag!("cell", society.govt_address_pincode)
			xml.tag!("cell", society.govt_address_plotnumber)
			xml.tag!("cell", society.registration_number)
			xml.tag!("cell", society.govt_ward_number)

		end
	end
end