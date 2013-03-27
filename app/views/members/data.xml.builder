xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@members.each do |member|
		xml.tag!("row",{ "id" => member.id }) do
			xml.tag!("cell", member.counter)
			xml.tag!("cell", member.name)
			xml.tag!("cell", member.mobile_phone)
			xml.tag!("cell", member.email_id)
			xml.tag!("cell", member.user_id)
			xml.tag!("cell", member.society_id)

		end
	end
end