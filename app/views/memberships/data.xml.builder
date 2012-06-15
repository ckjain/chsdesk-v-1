xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@memberships.each do |membership|
		xml.tag!("row",{ "id" => membership.id }) do
			xml.tag!("cell", membership.start_date)
			xml.tag!("cell", membership.unit_id)
			xml.tag!("cell", membership.member_id)
			xml.tag!("cell", membership.member_type)
			xml.tag!("cell", membership.status)
			xml.tag!("cell", membership.end_date)
			xml.tag!("cell", membership.ownership)
			xml.tag!("cell", membership.live_here)
			xml.tag!("cell", membership.email_bills)
			xml.tag!("cell", membership.sms_bills)
			xml.tag!("cell", membership.sms_receipt)
			xml.tag!("cell", membership.is_mc_member)
			xml.tag!("cell", membership.society_id)
		end
	end
end
