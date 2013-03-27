xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@unit_types.each do |unit_type|
		xml.tag!("row",{ "id" => unit_type.id }) do
			xml.tag!("cell", unit_type.type_name)
			xml.tag!("cell", unit_type.tax_area)
			xml.tag!("cell", unit_type.maintenance_area)
			xml.tag!("cell", unit_type.carpet_area)
			xml.tag!("cell", unit_type.built_area)
			xml.tag!("cell", unit_type.super_built_area)
			xml.tag!("cell", unit_type.society_id)

		end
	end
end