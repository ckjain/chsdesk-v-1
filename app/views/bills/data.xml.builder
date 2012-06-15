xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@bills.each do |bill|
		xml.tag!("row",{ "id" => bill.id }) do
			xml.tag!("cell", bill.bill_number)
			xml.tag!("cell", bill.from_date)
			xml.tag!("cell", bill.to_date)
			xml.tag!("cell", bill.bill_date)
			xml.tag!("cell", bill.membership_id)
			xml.tag!("cell", bill.parking_charges)
			xml.tag!("cell", bill.noc_charges)
			xml.tag!("cell", bill.property_tax)
			xml.tag!("cell", bill.maintenance_charges)
			xml.tag!("cell", bill.sinking_fund)
			xml.tag!("cell", bill.repair_fund)
			xml.tag!("cell", bill.other_charges)
			xml.tag!("cell", bill.other_detail)
			xml.tag!("cell", bill.service_tax)
			xml.tag!("cell", bill.penalty_interest)
			xml.tag!("cell", bill.discount_amount)
			xml.tag!("cell", bill.current_bill_charges)
			xml.tag!("cell", bill.payable_amount)
			xml.tag!("cell", bill.bill_header_id)
			xml.tag!("cell", bill.society_id)

		end
	end
end

