class UnitsController < ApplicationController
#    skip_authorization_check
   before_filter :authenticate_user!
   load_and_authorize_resource 

 
  def data
    if current_user.has_role? :super_admin
      @units = Unit.all
    else
      @units = Unit.where("society_id = ?", current_user.society_id)
    end
  end
  
  def dbaction
    #called for all db actions
    unit_name = params["c0"]
    unit_number = params["c1"]
    building_name  = params["c2"]
    wing_name      = params["c3"]
    floor_name     = params["c4"]
    unit_type_id   = params["c5"]
    parking_charges = params["c6"]
    noc_charges     = params["c7"]
    property_tax    = params["c8"]
    maintenance_charge  = params["c9"]
    sinking_fund    = params["c10"]
    repair_fund     = params["c11"]
    other_charge    = params["c12"]
    other_detail    = params["c13"]
    service_tax   = params["c14"]
    bill_amount   = params["c15"]
    society_id    = params["c16"]
     
    @mode = params["!nativeeditor_status"]
                  
    @id = params["gr_id"]
    case @mode
      when "inserted"
        unit = Unit.new
        unit.unit_number = unit_number
        unit.building_name = building_name
        unit.wing_name = wing_name
        unit.floor_name = floor_name
        unit.unit_type_id = unit_type_id
        unit.parking_charges = parking_charges
        unit.noc_charges = noc_charges
        unit.property_tax = property_tax
        unit.maintenance_charge = maintenance_charge
        unit.sinking_fund = sinking_fund
        unit.repair_fund = repair_fund
        unit.other_charge = other_charge
        unit.other_detail = other_detail
        unit.service_tax = service_tax
        unit.bill_amount = bill_amount
        unit.society_id = current_user.society_id
        
        unit.save!
        
        @tid = unit.id
      when "deleted"
        unit=Unit.find(@id)
        unit.destroy
        
        @tid = @id
      when "updated"
        unit=Unit.find(@id)
        unit.unit_number = unit_number
        unit.building_name = building_name
        unit.wing_name = wing_name
        unit.floor_name = floor_name
        unit.unit_type_id = unit_type_id
        unit.parking_charges = parking_charges
        unit.noc_charges = noc_charges
        unit.property_tax = property_tax
        unit.maintenance_charge = maintenance_charge
        unit.sinking_fund = sinking_fund
        unit.repair_fund = repair_fund
        unit.other_charge = other_charge
        unit.other_detail = other_detail
        unit.service_tax = service_tax
        unit.bill_amount = bill_amount

        unit.save!
        
        @tid = @id
    end 
  end
  
  def index
  end
  
  def unit_update
    property_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Property Tax').to_json)[0]['rate_sqft_month'].to_d
    property_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Property Tax').to_json)[0]['rate_unit_month'].to_d
    maintenance_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Maintenance Charges').to_json)[0]['rate_sqft_month'].to_d
    maintenance_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Maintenance Charges').to_json)[0]['rate_unit_month'].to_d
    sinking_fund_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Sinking Fund').to_json)[0]['rate_sqft_month'].to_d
    sinking_fund_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Sinking Fund').to_json)[0]['rate_unit_month'].to_d
    repair_fund_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Repair Fund').to_json)[0]['rate_sqft_month'].to_d
    repair_fund_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Repair Fund').to_json)[0]['rate_unit_month'].to_d
    other_charge_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-1').to_json)[0]['rate_sqft_month'].to_d
    other_charge_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-1').to_json)[0]['rate_unit_month'].to_d
    other_details=ActiveSupport::JSON.decode(BillSetup.select(:sub_head_name).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-1').to_json)[0]['sub_head_name'].to_s
    other_charge2_rate_sqft_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_sqft_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-2').to_json)[0]['rate_sqft_month'].to_d
    other_charge2_rate_unit_month=ActiveSupport::JSON.decode(BillSetup.select(:rate_unit_month).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-2').to_json)[0]['rate_unit_month'].to_d
    other_details2=ActiveSupport::JSON.decode(BillSetup.select(:sub_head_name).where("society_id = ? AND head_name =?", current_user.society_id, 'Other Charges-2').to_json)[0]['sub_head_name'].to_s

    unit=Unit.where("society_id = ?", current_user.society_id)
    unit_count = unit.count

      unit_count.times do |n|
        unit_tax_area=ActiveSupport::JSON.decode(UnitType.select(:tax_area).where("society_id = ? AND id = ?", current_user.society_id, unit[n].unit_type_id).to_json)[0]['tax_area'].to_d
        unit_property_tax=unit_tax_area*property_rate_sqft_month+property_rate_unit_month
        unit_maintenance_area=ActiveSupport::JSON.decode(UnitType.select(:maintenance_area).where("society_id = ? AND id = ?", current_user.society_id, unit[n].unit_type_id).to_json)[0]['maintenance_area'].to_d
        unit_maintenance=unit_maintenance_area*maintenance_rate_sqft_month+maintenance_rate_unit_month
        unit_sinking_fund=unit_maintenance_area*sinking_fund_rate_sqft_month+sinking_fund_rate_unit_month
        unit_repair_fund=unit_maintenance_area*repair_fund_rate_sqft_month+repair_fund_rate_unit_month
        unit_other_charge=unit_maintenance_area*other_charge_rate_sqft_month+other_charge_rate_unit_month
        unit_other_charge2=unit_maintenance_area*other_charge2_rate_sqft_month+other_charge2_rate_unit_month
  
        unit_bill_amount=unit_property_tax+unit_maintenance+unit_sinking_fund+unit_repair_fund+unit_other_charge+unit_other_charge2+unit[n].parking_charges+unit[n].noc_charges#+:noc_charges+:parking_charges
        unit[n].update_attributes(:property_tax => unit_property_tax,:maintenance_charge => unit_maintenance, :sinking_fund => unit_sinking_fund,
         :repair_fund => unit_repair_fund, :other_charge => unit_other_charge+unit_other_charge2, :other_detail =>  other_details+"-"+unit_other_charge.to_s+", "+other_details2+"-"+unit_other_charge2.to_s, :bill_amount => unit_bill_amount)
      end
#        Country.find(self.country_id).update_column(:state, total_states)
#        unit_property_tax=unit_property_tax.round(2).to_s
      redirect_to :back, only_path: true 
  end



end
