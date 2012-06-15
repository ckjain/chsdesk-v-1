xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
	@units.each do |unit|
		xml.tag!("row",{ "id" => unit.id }) do
			xml.tag!("cell", unit.unit_name)
			xml.tag!("cell", unit.unit_number)
			xml.tag!("cell", unit.building_name)
			xml.tag!("cell", unit.wing_name)
			xml.tag!("cell", unit.floor_name)
			xml.tag!("cell", unit.unit_type_id)
			xml.tag!("cell", unit.parking_charges)
			xml.tag!("cell", unit.noc_charges)
			xml.tag!("cell", unit.property_tax)
			xml.tag!("cell", unit.maintenance_charge)
			xml.tag!("cell", unit.sinking_fund)
			xml.tag!("cell", unit.repair_fund)
			xml.tag!("cell", unit.other_charge)
			xml.tag!("cell", unit.other_detail)
			xml.tag!("cell", unit.service_tax)
			xml.tag!("cell", unit.bill_amount)
			xml.tag!("cell", unit.society_id)

		end
	end
end
