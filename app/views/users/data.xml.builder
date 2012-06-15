xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@users.each do |user|
		xml.tag!("row",{ "id" => user.id }) do
			xml.tag!("cell", user.name)
			xml.tag!("cell", user.email)

		end
	end
end
