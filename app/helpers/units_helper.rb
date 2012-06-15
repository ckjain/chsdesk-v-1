module UnitsHelper
  
    def unit_update
      property_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Property Tax').to_json)[0]['rate_sqft_month'].to_d
      property_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Property Tax').to_json)[0]['rate_unit_month'].to_d
      maintenance_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Maintenance Charges').to_json)[0]['rate_sqft_month'].to_d
      maintenance_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Maintenance Charges').to_json)[0]['rate_unit_month'].to_d
      sinking_fund_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Sinking Fund').to_json)[0]['rate_sqft_month'].to_d
      sinking_fund_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Sinking Fund').to_json)[0]['rate_unit_month'].to_d
      repair_fund_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Repair Fund').to_json)[0]['rate_sqft_month'].to_d
      repair_fund_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Repair Fund').to_json)[0]['rate_unit_month'].to_d
      other_charge_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-1').to_json)[0]['rate_sqft_month'].to_d
      other_charge_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-1').to_json)[0]['rate_unit_month'].to_d
      other_details=ActiveSupport::JSON.decode(BillSetup.select(:sub_head_name).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-1').to_json)[0]['sub_head_name'].to_s
      other_charge2_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-2').to_json)[0]['rate_sqft_month'].to_d
      other_charge2_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-2').to_json)[0]['rate_unit_month'].to_d
      other_details2=ActiveSupport::JSON.decode(BillSetup.select(:sub_head_name).where("society_id like ? AND head_name like?", current_user.society_id, 'Other Charges-2').to_json)[0]['sub_head_name'].to_s

      unit=Unit.where("society_id like ?", current_user.society_id)
      unit_count = unit.count

      unit_count.times do |n|
        unit_tax_area=ActiveSupport::JSON.decode(UnitType.select(:tax_area).where("society_id like ? AND id like ?", current_user.society_id, unit[n].unit_type_id).to_json)[0]['tax_area'].to_d
        unit_property_tax=unit_tax_area*property_rate_sqft_month+property_rate_unit_month
        unit_maintenance_area=ActiveSupport::JSON.decode(UnitType.select(:maintenance_area).where("society_id like ? AND id like ?", current_user.society_id, unit[n].unit_type_id).to_json)[0]['maintenance_area'].to_d
        unit_maintenance=unit_maintenance_area*maintenance_rate_sqft_month+maintenance_rate_unit_month
        unit_sinking_fund=unit_maintenance_area*sinking_fund_rate_sqft_month+sinking_fund_rate_unit_month
        unit_repair_fund=unit_maintenance_area*repair_fund_rate_sqft_month+repair_fund_rate_unit_month
        unit_other_charge=unit_maintenance_area*other_charge_rate_sqft_month+other_charge_rate_unit_month
        unit_other_charge2=unit_maintenance_area*other_charge2_rate_sqft_month+other_charge2_rate_unit_month

        unit_bill_amount=unit_property_tax+unit_maintenance+unit_sinking_fund+unit_repair_fund+unit_other_charge+unit[n].parking_charges+unit[n].noc_charges#+:noc_charges+:parking_charges
        unit[n].update_attributes(:property_tax => unit_property_tax,:maintenance_charge => unit_maintenance, :sinking_fund => unit_sinking_fund,
         :repair_fund => unit_repair_fund, :other_charge => unit_other_charge+unit_other_charge2, :other_detail =>  other_details+"-"+unit_other_charge.to_s+", "+other_details2+"-"+unit_other_charge2.to_s, :bill_amount => unit_bill_amount)
      end

#        Country.find(self.country_id).update_column(:state, total_states)
#        unit_property_tax=unit_property_tax.round(2).to_s

  end

  
  def updated_unit

    sql = ActiveRecord::Base.connection();
    sql.execute "SET autocommit=0";
    sql.begin_db_transaction 
    id, value =
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.property_tax=unit_types.tax_area * bill_setups.rate_sqft_month+bill_setups.rate_unit_month, 
    units.service_tax=units.property_tax*bill_setups.service_tax_pct/100,
    units.discount=units.property_tax*bill_setups.discount_pct/100
    WHERE bill_setups.head_name ='Property Tax' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.sinking_fund=unit_types.maintenance_area * bill_setups.rate_sqft_month+bill_setups.rate_unit_month, 
    units.service_tax=units.service_tax+(units.sinking_fund*bill_setups.service_tax_pct/100),
    units.discount=units.discount+(units.sinking_fund*bill_setups.discount_pct/100)
    WHERE bill_setups.head_name ='Sinking fund' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.repair_fund=unit_types.maintenance_area * bill_setups.rate_sqft_month+bill_setups.rate_unit_month, 
    units.service_tax=units.service_tax+(units.repair_fund*bill_setups.service_tax_pct/100),
    units.discount=units.discount+(units.repair_fund*bill_setups.discount_pct/100)
    WHERE bill_setups.head_name ='Repair fund' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.maintenance_charge=unit_types.maintenance_area * bill_setups.rate_sqft_month+bill_setups.rate_unit_month, 
    units.service_tax=units.service_tax+(units.maintenance_charge*bill_setups.service_tax_pct/100),
    units.discount=units.discount+(units.maintenance_charge*bill_setups.discount_pct/100)
    WHERE bill_setups.head_name ='Maintenance charges' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month,
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-1' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=units.other_charge+(unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month),
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=units.other_detail+bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-2' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=units.other_charge+(unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month),
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=units.other_detail+bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-3' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=units.other_charge+(unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month),
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=units.other_detail+bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-4' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=units.other_charge+(unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month),
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=units.other_detail+bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-5' AND units.unit_type_id = unit_types.id;";
    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups` 
    SET units.other_charge=units.other_charge+(unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month),
    units.service_tax=units.service_tax+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.service_tax_pct/100),
    units.discount=units.discount+((unit_types.maintenance_area*bill_setups.rate_sqft_month+bill_setups.rate_unit_month)*bill_setups.discount_pct/100),
    units.other_detail=units.other_detail+bill_setups.sub_head_name
    WHERE bill_setups.head_name ='Other Charges-6' AND units.unit_type_id = unit_types.id;";

    sql.update "UPDATE `chsdesk`. `units`, `unit_types`, `bill_setups`
    SET units.bill_amount=units.property_tax+units.maintenance_charge+units.sinking_fund+units.repair_fund+units.service_tax+units.other_charge-units.discount+units.noc_charges+units.parking_charges";
    sql.commit_db_transaction 
    value;
 
    updated_at > 10.minutes.ago
  end
  
end