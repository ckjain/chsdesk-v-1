class UnitsController < ApplicationController
#    skip_authorization_check
   before_filter :authenticate_user!
   load_and_authorize_resource 

 
  def data
    if current_user.has_role? :super_admin
      @units = Unit.all
    else
      @units = Unit.where("society_id like ?", current_user.society_id)
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

end
